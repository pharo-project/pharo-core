accessing
findBetweenSubStrs: delimiters
	"Answer the collection of String tokens that result from parsing self.  Tokens are separated by 'delimiters', which can be a collection of Strings, or a collection of Characters.  Several delimiters in a row are considered as just one separation."

	| tokens keyStart keyStop |
	tokens := OrderedCollection new.
	keyStop := 1.
	[keyStop <= self size] whileTrue:
		[keyStart := self skipAnySubStr: delimiters startingAt: keyStop.
		keyStop := self findAnySubStr: delimiters startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (self copyFrom: keyStart to: (keyStop - 1))]].
	^tokens