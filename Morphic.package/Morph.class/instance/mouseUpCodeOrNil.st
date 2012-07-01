debug and other
mouseUpCodeOrNil
	"If the receiver has a mouseUpCodeToRun, return it, else return nil"

	^ self valueOfProperty: #mouseUpCodeToRun ifAbsent: [nil]