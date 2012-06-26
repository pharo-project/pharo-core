as yet unclassified
addFromTTFile: fileName
"
	Execute the following only if you know what you are doing.
	self addFromTTFile: 'C:\WINDOWS\Fonts\msgothic.TTC'
"

	| tt old |
	(fileName asLowercase endsWith: 'ttf') ifTrue: [
		tt := TTCFontReader readTTFFrom: (FileStream readOnlyFileNamed: fileName).
	] ifFalse: [
		tt := TTCFontReader readFrom: (FileStream readOnlyFileNamed: fileName).
	].
		
	old := TTCDescriptions detect: [:f | f first name = tt first name] ifNone: [nil].
	old ifNotNil: [TTCDescriptions remove: old].
	TTCDescriptions add: tt.
	^ tt.
