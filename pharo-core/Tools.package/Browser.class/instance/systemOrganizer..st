initialization
systemOrganizer: aSystemOrganizer
	"Initialize the receiver as a perspective on the system organizer, 
	aSystemOrganizer. Typically there is only one--the system variable 
	SystemOrganization."
	
	contents := nil.
	systemOrganizer := aSystemOrganizer.
	systemCategoryListIndex := 0.
	classListIndex := 0.
	messageCategoryListIndex := 0.
	messageListIndex := 0.
	metaClassIndicated := false.
	self setClassOrganizer.
	self editSelection: #none.