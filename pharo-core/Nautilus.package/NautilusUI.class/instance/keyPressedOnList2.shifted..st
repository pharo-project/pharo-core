events handling
keyPressedOnList2: anEvent shifted: aBoolean
	| aCharacter |

	aCharacter := anEvent keyCharacter.

	(aCharacter == self class nextFocusKey) ifTrue: [ ^ self giveFocusTo: categoryWidget ].
	(aCharacter == self class previousFocusKey) ifTrue: [ ^ self giveFocusTo: list ].