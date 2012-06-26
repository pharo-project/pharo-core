accessing
classPool
	"Answer the dictionary of class variables."

	classPool == nil
		ifTrue: [^Dictionary new]
		ifFalse: [^classPool]