indexIfCompact
	"If these 5 bits are non-zero, then instances of this class
	will be compact.  It is crucial that there be an entry in
	Smalltalk compactClassesArray for any class so optimized.
	See the msgs becomeCompact and becomeUncompact."
	^ (self format bitShift: -11) bitAnd: 16r1F


"
Array indexIfCompact

Verify if the compactClassesArray and indexIfCompact are coheren
Smalltalk compactClassesArray doWithIndex: 
	[:c :i | c == nil ifFalse:
		[c indexIfCompact = i ifFalse: [self halt]]]
"