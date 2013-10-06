nextValue
	"This method generates random instances of Integer 	in the interval
	0 to 16r7FFFFFFF. This method does NOT update the seed; repeated sends
	answer the same value.
	The algorithm is described in detail in 'Random Number Generators: 
	Good Ones Are Hard to Find' by Stephen K. Park and Keith W. Miller 
	(Comm. Asso. Comp. Mach., 31(10):1192--1201, 1988)."

	| lo hi aLoRHi answer |
	hi := (seed quo: q) asFloat.
	lo := seed - (hi * q).  " = seed rem: q"  
	aLoRHi := (a * lo) - (r * hi).
	answer := (aLoRHi > 0.0)
		ifTrue:  [aLoRHi]
		ifFalse: [aLoRHi + m].
	^ answer