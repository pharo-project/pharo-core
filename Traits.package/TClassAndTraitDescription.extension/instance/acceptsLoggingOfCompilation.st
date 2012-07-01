compiling
acceptsLoggingOfCompilation
	"Answer whether the receiver's method submisions and class defintions should be logged to the changes file and to the current change set.  The metaclass follows the rule of the class itself.  6/18/96 sw"
	"weird name is so that it will come lexically before #compile, so that a clean build can make it through.  7/7/96 sw"

	^ true