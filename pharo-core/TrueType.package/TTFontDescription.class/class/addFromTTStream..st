instance creations
addFromTTStream: readStream
"
	self addFromTTFile: 'C:\WINDOWS\Fonts\ARIALN.TTF'
"

	| tt old |
	tt := TTFontReader readFrom: readStream.
	old := Descriptions detect: [:f | f name = tt name and: [f subfamilyName = tt subfamilyName]] ifNone: [nil].
	old ifNotNil: [Descriptions remove: old].
	Descriptions add: tt.
	^ tt.
