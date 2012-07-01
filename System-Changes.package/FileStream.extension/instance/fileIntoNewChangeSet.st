*System-Changes
fileIntoNewChangeSet
	"File all of my contents into a new change set." 

	self readOnly.
	ChangeSet newChangesFromStream: self named: (self localName)
