
//
//    Copyright 2015 - Jorge Ouahbi
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//


//
//  Easing.swift
//
//  Created by Jorge Ouahbi on 21/4/16.
//  Copyright © 2016 Jorge Ouahbi. All rights reserved.
//

import Foundation


func EaseAverage(x: Double, slopeFunction: (Double) -> Double) -> Double {
    let averageEase = slopeFunction(x)
    return (averageEase + x) / 2
}

func QuadraticEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuadraticEaseIn)
}
func QuadraticEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuadraticEaseOut)
}
func QuadraticEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuadraticEaseInOut)
}
func CubicEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CubicEaseIn)
}
func CubicEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CubicEaseOut)
}
func CubicEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CubicEaseInOut)
}
func QuarticEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuarticEaseIn)
}
func QuarticEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuarticEaseOut)
}
func QuarticEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuarticEaseInOut)
}
func QuinticEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuinticEaseIn)
}
func QuinticEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuinticEaseOut)
}
func QuinticEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:QuinticEaseInOut)
}
func SineEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:SineEaseIn)
}
func SineEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:SineEaseOut)
}
func SineEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:SineEaseInOut)
}
func CircularEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CircularEaseIn)
}
func CircularEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CircularEaseOut)
}
func CircularEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:CircularEaseInOut)
}
func ExponentialEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ExponentialEaseIn)
}
func ExponentialEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ExponentialEaseOut)
}
func ExponentialEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ExponentialEaseInOut)
}
func ElasticEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ElasticEaseIn)
}
func ElasticEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ElasticEaseOut)
}
func ElasticEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:ElasticEaseInOut)
}
func BackEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:BackEaseIn)
}
func BackEaseOutAverage(x: Double) -> Double {
    
    return EaseAverage(x,slopeFunction:BackEaseOut)
}
func BackEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:BackEaseInOut)
}
func BounceEaseInAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:BounceEaseIn)
}
func BounceEaseOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:BounceEaseOut)
}
func BounceEaseInOutAverage(x: Double) -> Double {
    return EaseAverage(x,slopeFunction:BounceEaseInOut)
    
}

//
//  easing.c
//
//  Copyright (c) 2011, Auerhaus Development, LLC
//
//  This program is free software. It comes without any warranty, to
//  the extent permitted by applicable law. You can redistribute it
//  and/or modify it under the terms of the Do What The Fuck You Want
//  To Public License, Version 2, as published by Sam Hocevar. See
//  http://sam.zoy.org/wtfpl/COPYING for more details.
//

// Modeled after the line y = x
func LinearInterpolation(p: Double) -> Double
{
    return p;
}

// Modeled after the parabola y = x^2
func QuadraticEaseIn(p: Double) -> Double
{
    return p * p;
}

// Modeled after the parabola y = -x^2 + 2x
func QuadraticEaseOut(p: Double) -> Double
{
    return -(p * (p - 2));
}

// Modeled after the piecewise quadratic
// y = (1/2)((2x)^2)             ; [0, 0.5)
// y = -(1/2)((2x-1)*(2x-3) - 1) ; [0.5, 1]
func QuadraticEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 2 * p * p;
    }
    else
    {
        return (-2 * p * p) + (4 * p) - 1;
    }
}

// Modeled after the cubic y = x^3
func CubicEaseIn(p: Double) -> Double
{
    return p * p * p;
}

// Modeled after the cubic y = (x - 1)^3 + 1
func CubicEaseOut(p: Double) -> Double
{
    let f = (p - 1);
    return f * f * f + 1;
}

// Modeled after the piecewise cubic
// y = (1/2)((2x)^3)       ; [0, 0.5)
// y = (1/2)((2x-2)^3 + 2) ; [0.5, 1]
func CubicEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 4 * p * p * p;
    }
    else
    {
        let f = ((2 * p) - 2);
        return 0.5 * f * f * f + 1;
    }
}

// Modeled after the quartic x^4
func QuarticEaseIn(p: Double) -> Double
{
    return p * p * p * p;
}

// Modeled after the quartic y = 1 - (x - 1)^4
func QuarticEaseOut(p: Double) -> Double
{
    let f = (p - 1);
    return f * f * f * (1 - p) + 1;
}

// Modeled after the piecewise quartic
// y = (1/2)((2x)^4)        ; [0, 0.5)
// y = -(1/2)((2x-2)^4 - 2) ; [0.5, 1]
func QuarticEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 8 * p * p * p * p;
    }
    else
    {
        let f = (p - 1);
        return -8 * f * f * f * f + 1;
    }
}

// Modeled after the quintic y = x^5
func QuinticEaseIn(p: Double) -> Double
{
    return p * p * p * p * p;
}

// Modeled after the quintic y = (x - 1)^5 + 1
func QuinticEaseOut(p: Double) -> Double
{
    let f = (p - 1);
    return f * f * f * f * f + 1;
}

// Modeled after the piecewise quintic
// y = (1/2)((2x)^5)       ; [0, 0.5)
// y = (1/2)((2x-2)^5 + 2) ; [0.5, 1]
func QuinticEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 16 * p * p * p * p * p;
    }
    else
    {
        let f = ((2 * p) - 2);
        return  0.5 * f * f * f * f * f + 1;
    }
}

// Modeled after quarter-cycle of sine wave
func SineEaseIn(p: Double) -> Double
{
    return sin((p - 1) * Double(M_PI_2)) + 1;
}

// Modeled after quarter-cycle of sine wave (different phase)
func SineEaseOut(p: Double) -> Double
{
    return sin(p * Double(M_PI_2));
}

// Modeled after half sine wave
func SineEaseInOut(p: Double) -> Double
{
    return 0.5 * (1 - cos(p * Double(M_PI)));
}

// Modeled after shifted quadrant IV of unit circle
func CircularEaseIn(p: Double) -> Double
{
    return 1 - sqrt(1 - (p * p));
}

// Modeled after shifted quadrant II of unit circle
func CircularEaseOut(p: Double) -> Double
{
    return sqrt((2 - p) * p);
}

// Modeled after the piecewise circular function
// y = (1/2)(1 - sqrt(1 - 4x^2))           ; [0, 0.5)
// y = (1/2)(sqrt(-(2x - 3)*(2x - 1)) + 1) ; [0.5, 1]
func CircularEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 0.5 * (1 - sqrt(1 - 4 * (p * p)));
    }
    else
    {
        return 0.5 * (sqrt(-((2 * p) - 3) * ((2 * p) - 1)) + 1);
    }
}

// Modeled after the exponential function y = 2^(10(x - 1))
func ExponentialEaseIn(p: Double) -> Double
{
    return (p == 0.0) ? p : pow(2, 10 * (p - 1));
}

// Modeled after the exponential function y = -2^(-10x) + 1
func ExponentialEaseOut(p: Double) -> Double
{
    return (p == 1.0) ? p : 1 - pow(2, -10 * p);
}

// Modeled after the piecewise exponential
// y = (1/2)2^(10(2x - 1))         ; [0,0.5)
// y = -(1/2)*2^(-10(2x - 1))) + 1 ; [0.5,1]
func ExponentialEaseInOut(p: Double) -> Double
{
    if(p == 0.0 || p == 1.0) {return p;}
    
    if(p < 0.5)
    {
        return 0.5 * pow(2, (20 * p) - 10);
    }
    else
    {
        return -0.5 * pow(2, (-20 * p) + 10) + 1;
    }
}

// Modeled after the damped sine wave y = sin(13pi/2*x)*pow(2, 10 * (x - 1))
func ElasticEaseIn(p: Double) -> Double
{
    return sin(13 * Double(M_PI_2) * p) * pow(2, 10 * (p - 1));
}

// Modeled after the damped sine wave y = sin(-13pi/2*(x + 1))*pow(2, -10x) + 1
func ElasticEaseOut(p: Double) -> Double
{
    return sin(-13 * Double(M_PI_2) * (p + 1)) * pow(2, -10 * p) + 1;
}

// Modeled after the piecewise exponentially-damped sine wave:
// y = (1/2)*sin(13pi/2*(2*x))*pow(2, 10 * ((2*x) - 1))      ; [0,0.5)
// y = (1/2)*(sin(-13pi/2*((2x-1)+1))*pow(2,-10(2*x-1)) + 2) ; [0.5, 1]
func ElasticEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 0.5 * sin(13 * Double(M_PI_2) * (2 * p)) * pow(2, 10 * ((2 * p) - 1));
    }
    else
    {
        return 0.5 * (sin(-13 * Double(M_PI_2) * ((2 * p - 1) + 1)) * pow(2, -10 * (2 * p - 1)) + 2);
    }
}

// Modeled after the overshooting cubic y = x^3-x*sin(x*pi)
func BackEaseIn(p: Double) -> Double
{
    return p * p * p - p * sin(p * Double(M_PI));
}

// Modeled after overshooting cubic y = 1-((1-x)^3-(1-x)*sin((1-x)*pi))
func BackEaseOut(p: Double) -> Double
{
    let f = (1 - p);
    return 1 - (f * f * f - f * sin(f * Double(M_PI)));
}

// Modeled after the piecewise overshooting cubic function:
// y = (1/2)*((2x)^3-(2x)*sin(2*x*pi))           ; [0, 0.5)
// y = (1/2)*(1-((1-x)^3-(1-x)*sin((1-x)*pi))+1) ; [0.5, 1]
func BackEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        let f = 2 * p;
        return 0.5 * (f * f * f - f * sin(f * Double(M_PI)));
    }
    else
    {
        let f = (1 - (2*p - 1));
        let fsin = sin(f * Double(M_PI))
        return 0.5 * (1 - (f * f * f - f * fsin)) + 0.5;
    }
}

func BounceEaseIn(p: Double) -> Double
{
    return 1 - BounceEaseOut(1 - p);
}

func BounceEaseOut(p: Double) -> Double
{
    if(p < 4/11.0)
    {
        return (121 * p * p)/16.0;
    }
    else if(p < 8/11.0)
    {
        return (363/40.0 * p * p) - (99/10.0 * p) + 17/5.0;
    }
    else if(p < 9/10.0)
    {
        return (4356/361.0 * p * p) - (35442/1805.0 * p) + 16061/1805.0;
    }
    else
    {
        return (54/5.0 * p * p) - (513/25.0 * p) + 268/25.0;
    }
}

func BounceEaseInOut(p: Double) -> Double
{
    if(p < 0.5)
    {
        return 0.5 * BounceEaseIn(p*2);
    }
    else
    {
        return 0.5 * BounceEaseOut(p * 2 - 1) + 0.5;
    }
}

