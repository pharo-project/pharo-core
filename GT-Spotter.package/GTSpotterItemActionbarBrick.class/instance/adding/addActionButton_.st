addActionButton: anActionButton

	self themer spotterThemer itemActionButtonStyleFor: anActionButton.
		
	self addBrickBack: anActionButton.
	
	self stepModel spotter isShiftPressed
		ifTrue: [ self themer spotterThemer hintRevealStyleFor: anActionButton ].