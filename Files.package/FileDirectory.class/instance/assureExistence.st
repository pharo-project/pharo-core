nil
assureExistence
	"Make sure the current directory exists. If necessary, create all parts in between"
	
	self containingDirectory assureExistenceOfPath: self localName