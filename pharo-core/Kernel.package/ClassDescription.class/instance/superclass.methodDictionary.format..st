initialize-release
superclass: aClass methodDictionary: mDict format: fmt
	"Basic initialization of the receiver"
	super superclass: aClass methodDictionary: mDict format: fmt.
	instanceVariables := nil.
	self organization: nil.