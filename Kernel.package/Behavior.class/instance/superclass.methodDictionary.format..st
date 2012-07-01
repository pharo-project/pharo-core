initialize-release
superclass: aClass methodDictionary: mDict format: fmt
	"Basic initialization of the receiver.
	Must only be sent to a new instance; else we would need Object flushCache."
	superclass := aClass.
	format := fmt.
	methodDict := mDict.
	self traitComposition: nil