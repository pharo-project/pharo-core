morphic ui
packageHighlight: aString

	newer ifNil: [newer := #()].
	^(loaded anySatisfy: [:each | (each copyUpToLast: $-) = aString])
		ifTrue: [
			Text string: aString
				attribute: (TextEmphasis new emphasisCode: (
					((newer includes: aString)
						ifTrue: [5] ifFalse: [4])))]
		ifFalse: [aString]