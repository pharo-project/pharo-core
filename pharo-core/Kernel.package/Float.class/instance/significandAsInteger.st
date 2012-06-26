truncation and round off
significandAsInteger

	| exp sig |
	exp := self exponent.
	sig := (((self at: 1) bitAnd: 16r000FFFFF) bitShift: 32) bitOr: (self at: 2).
	(exp > -1023 and: [self ~= 0.0])
		ifTrue: [sig := sig bitOr: (1 bitShift: 52)].
	^ sig.