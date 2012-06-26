accessing
menuMorph
	^ self expanded ifTrue: [NOCXMenuMorph] ifFalse: [NOCMenuMorph]