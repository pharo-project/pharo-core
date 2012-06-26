character writing
crtab: anInteger 
	"Append a return character, followed by anInteger tab characters, to the 
	receiver."

	self nextPut: 13.
	anInteger timesRepeat: [self tab]