context stack menu
contextStackMenu: aMenu shifted: shifted 
	"Set up the menu appropriately for the context-stack-list, either shifted
	or unshifted as per the parameter provided"
	^ shifted
		ifTrue: [ self shiftedContextStackMenu: aMenu ]
		ifFalse: [ self unshiftedContextStackMenu: aMenu ].
		