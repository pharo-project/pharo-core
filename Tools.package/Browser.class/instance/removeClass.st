class functions
removeClass
	"If the user confirms the wish to delete the class, do so"

	super removeClass ifTrue:
		[self classListIndex: 0]