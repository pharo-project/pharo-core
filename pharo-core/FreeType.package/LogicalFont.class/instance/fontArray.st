forwarded to realFont
fontArray
	| real | 
	real := self realFont.
	((real isMemberOf: StrikeFontSet) or: [real isKindOf: TTCFontSet]) ifTrue: [
		^real fontArray
	] ifFalse: [
		^{self}
	].