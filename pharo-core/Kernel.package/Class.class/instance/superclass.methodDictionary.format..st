initialize-release
superclass: aClass methodDictionary: mDict format: fmt
	"Basic initialization of the receiver"
	super superclass: aClass methodDictionary: mDict format: fmt.
	subclasses := nil. "Important for moving down the subclasses field into Class"
