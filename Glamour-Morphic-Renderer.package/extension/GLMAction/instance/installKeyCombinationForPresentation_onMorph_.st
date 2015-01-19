installKeyCombinationForPresentation: aPresentation onMorph: aMorph
	aMorph 
		on: (self shortcut isUppercase 
			ifTrue: [ self shortcut command shift ]
			ifFalse: [ self shortcut command ])
		do: [ self actOn: aPresentation ].
	aMorph 
		on: (self shortcut isUppercase 
			ifTrue: [ self shortcut ctrl shift ]
			ifFalse: [ self shortcut ctrl ])
		do: [ self actOn: aPresentation ]