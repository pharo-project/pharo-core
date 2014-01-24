initialize

	super initialize.

	stagingArea := nil asReactiveVariable.
	lastCommit := nil asReactiveVariable.
	
	"self registerToAnnouncements"