activateOwnerMenu: evt
	"Activate our owner menu; e.g., pass control to it.
	 If it does not contain the pointer position, pass it through the owner chain."

	| popUpOwner |
	owner ifNil: [ ^ false ].
	(owner fullContainsPoint: evt position)
		ifTrue: [ 
			owner activate: evt.
			^ true ].
	popUpOwner := owner popUpOwner.
	[ popUpOwner ]
		whileNotNil: [ 
			(popUpOwner owner fullContainsPoint: evt position)
				ifTrue: [ 
					popUpOwner owner activate: evt.
					^ true ]
				ifFalse: [ popUpOwner := popUpOwner owner popUpOwner ] ].
	^ false