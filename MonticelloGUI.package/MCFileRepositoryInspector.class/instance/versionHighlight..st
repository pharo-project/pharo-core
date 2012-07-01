morphic ui
versionHighlight: aString

	| verName |
	inherited ifNil: [inherited := #()].
	verName := (aString copyUpToLast: $.) copyUpTo: $(.
	^Text
		string: aString
		attribute: (TextEmphasis new emphasisCode: (
			((loaded includes: verName) ifTrue: [ 4 "underlined" ]
				ifFalse: [ (inherited includes: verName)
					ifTrue: [ 0 ]
					ifFalse: [ 1 "bold" ] ])))