drawKeyTextOn: aCanvas 
	"Draw the key text on the canvas."
	
	self keyText ifNil: [^self].
	(ToggleMenuItemShortcut 
		owner: self 
		keyText: self keyText)
		drawOn: aCanvas