keyPressedOnList: anEvent shifted: aBoolean
	| aCharacter |
	aCharacter := anEvent keyCharacter.
	aCharacter == self model class nextFocusKey
		ifTrue: [ ^ self model giveFocusTo: self model classWidget ].
	aCharacter == self model class previousFocusKey
		ifTrue: [ ^ self model giveFocusTo: self model sourceTextArea ]