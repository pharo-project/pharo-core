accessing method dictionary
zapAllMethods
	"Remove all methods in this class which is assumed to be obsolete"

	methodDict := self emptyMethodDictionary.
	self class isMeta ifTrue: [self class zapAllMethods]