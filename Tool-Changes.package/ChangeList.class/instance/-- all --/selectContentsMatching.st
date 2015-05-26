selectContentsMatching
	| pattern |
	pattern := UIManager default request: 'pattern to match'.
	pattern isEmpty ifTrue: [^self].
	^Cursor execute showWhile:
		[self selectSuchThat: ((pattern includesAnyOf: '?*')
								ifTrue: [ [:change | pattern match: change string]]
								ifFalse: [ [:change | change string includesSubstring: pattern]])]