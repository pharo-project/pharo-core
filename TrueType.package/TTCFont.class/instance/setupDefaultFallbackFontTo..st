friend
setupDefaultFallbackFontTo: aTextStyleOrNil
"
	TTCFont allInstances do: [:i | i setupDefaultFallbackFontTo: (TextStyle named: 'MultiMSMincho')].
"

	| fonts f |
	aTextStyleOrNil ifNil: [
		self fallbackFont: nil.
		^ self.
	].
	fonts := aTextStyleOrNil fontArray.
	(aTextStyleOrNil defaultFont familyName endsWith: self familyName) ifTrue: [fallbackFont := nil. ^ self].

	f := fonts first.
	1 to: fonts size do: [:i |
		self height >= (fonts at: i) height ifTrue: [f := fonts at: i].
	].
	self fallbackFont: f.
	self reset.

