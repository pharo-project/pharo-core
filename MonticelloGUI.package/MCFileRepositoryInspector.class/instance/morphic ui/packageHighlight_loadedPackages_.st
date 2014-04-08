packageHighlight: aString loadedPackages: loadedPackages

	newer ifNil: [newer := #()].
	^(loadedPackages anySatisfy: [:each | each = aString])
		ifTrue: [
			Text string: aString
				attribute: (TextEmphasis new emphasisCode: (
					((newer includes: aString)
						ifTrue: [5] ifFalse: [4])))]
		ifFalse: [aString]