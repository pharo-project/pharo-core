testing
isRegular
	"Answer true if I am a Regular/Roman font (i.e. not bold, etc.)"
	^ (self indexOfSubfamilyName: (self subfamilyName)) = 0.
