*UIManager
inform: aString
	"Display a message for the user to read and then dismiss. 6/9/96 sw"

	aString isEmptyOrNil ifFalse: [UIManager default inform: aString]