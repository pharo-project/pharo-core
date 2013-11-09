actOnClick: anEvent for: anObject in: paragraph editor: editor

	| result |
	result := Compiler evaluate: evalString for: anObject logged: false.
	UIManager inform: result printString.
	^ true 