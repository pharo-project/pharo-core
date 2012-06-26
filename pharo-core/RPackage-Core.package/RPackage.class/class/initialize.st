class initialization
initialize
	"self initialize"
	
	super initialize.
	self organizer: self packageOrganizerClass default.
