typing/selecting keys
selectAll: aKeyboardEvent 
	"select everything, invoked by cmd-a.  1/17/96 sw"

	self closeTypeIn.
	self selectFrom: 1 to: self string size.
	^ true