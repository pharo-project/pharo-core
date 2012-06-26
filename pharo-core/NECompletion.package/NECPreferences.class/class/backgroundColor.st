accessing
backgroundColor 
	^backgroundColor ifNil: [ 
		backgroundColor := (UITheme current settings menuColor ifNil: [ Color white ]) ]