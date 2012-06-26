SqNumberParser is a NumberParser specialized in reading Number with Squeak syntax.

Squeak syntax follows general Smalltalk-80 conventions for integer and floats, extended with scaled decimals.
Noticeable differences with st-80 and other Smalltalks are:
- allow both 2r-10 and -2r10 and even -2r-10
- allow floating point with radix 2r10.011
- do not allow single s without following digits as ScaledDecimal
- handle special case of Float (NaN Infinity and -0.0 as negative zero)