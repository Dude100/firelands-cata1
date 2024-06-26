/**
 @file Cone.cpp

 Cone class

 @maintainer Morgan McGuire, http://graphics.cs.williams.edu

 @created 2001-07-09
 @edited  2006-01-29
*/

#include "G3D/platform.h"
#include "G3D/Cone.h"
#include "G3D/Line.h"
#include "G3D/Sphere.h"
#include "G3D/Box.h"

namespace G3D {


float Cone::solidAngleFromHalfAngle(float halfAngle){
    return 2.0f * pif() * (1 - cosf(halfAngle));
}

double Cone::solidAngleFromHalfAngle(double halfAngle){
    return 2.0 * pi() * (1.0 - cos(halfAngle));
}

float Cone::halfAngleFromSolidAngle(float solidAngle){
    return acos((1.0f - (solidAngle / (2.0f * pif()))));
}

double Cone::halfAngleFromSolidAngle(double solidAngle){
    return aCos((1.0 - (solidAngle / (2.0 * pi()))));
}


Cone::Cone(const Vector3 &tip, const Vector3 &direction, float angle) {
    this->tip = tip;
    this->direction = direction.direction();
    this->angle = angle;

    debugAssert(angle >= 0);
    debugAssert(angle <= pi());
}

Vector3 Cone::randomDirectionInCone(Random& rng) const {
        const float cosThresh = cos(angle);

        float cosAngle;
        float normalizer;
        Vector3 v;
        do {
            float vlenSquared;

            // Sample uniformly on a sphere by rejection sampling and then normalizing
            do {
                v.x = rng.uniform(-1, 1);
                v.y = rng.uniform(-1, 1);
                v.z = rng.uniform(-1, 1);

                // Sample uniformly on a cube
                vlenSquared = v.squaredLength();
            } while (vlenSquared > 1);


            const float temp = v.dot(direction);

            // Compute 1 / ||v||, but
            // if the vector is in the wrong hemisphere, flip the sign
            normalizer = rsqrt(vlenSquared) * sign(temp);

            // Cosine of the angle between v and the light's negative-z axis
            cosAngle = temp * normalizer;

        } while (cosAngle < cosThresh);

        // v was within the cone.  Normalize it and maybe flip the hemisphere.
        return v * normalizer;
    }


/**
 Forms the smallest cone that contains the box.  Undefined if
 the tip is inside or on the box.
 */
Cone::Cone(const Vector3& tip, const Box& box) {
    this->tip = tip;
    this->direction = (box.center() - tip).direction();

    // Find the biggest angle
    float smallestDotProduct = direction.dot((box.corner(0) - tip).direction());

    for (int i = 1; i < 8; ++i) {
        float dp = direction.dot((box.corner(i) - tip).direction());

        debugAssert(dp > 0);

        if (dp < smallestDotProduct) {
            smallestDotProduct = dp;
        }
    }

    angle = acosf(smallestDotProduct);
}


bool Cone::intersects(const Sphere& b) const {
    // If the bounding sphere contains the tip, then
    // they definitely touch.
    if (b.contains(this->tip)) {
        return true;
    }

    // Move the tip backwards, effectively making the cone bigger
    // to account for the radius of the sphere.

    Vector3 tip = this->tip - direction * b.radius / sinf(angle);

    return Cone(tip, direction, angle).contains(b.center);
}


bool Cone::contains(const Vector3& v) const {

    Vector3 d = (v - tip).direction();

    float x = d.dot(direction);

    return (x > 0) && (x >= cosf(angle));
}

}; // namespace
