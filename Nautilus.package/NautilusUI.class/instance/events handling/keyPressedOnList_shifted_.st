keyPressedOnList: anEvent shifted: aBoolean
	| aCharacter |

	aCharacter := anEvent keyCharacter.
	
	(aCharacter == self class nextFocusKey) ifTrue: [ ^ self giveFocusTo: self classWidget ].
	(aCharacter == self class previousFocusKey) ifTrue: [ ^ self giveFocusTo: sourceTextArea ].