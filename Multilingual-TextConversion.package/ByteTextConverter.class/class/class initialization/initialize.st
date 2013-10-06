initialize
	"ByteTextConverter initialize"

	self allSubclassesDo: [:subclass |
		subclass initializeTables]