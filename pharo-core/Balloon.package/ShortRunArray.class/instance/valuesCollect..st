enumerating
valuesCollect: aBlock
	"Evaluate aBlock with each of the receiver's values as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."
	| newArray newValue |
	newArray := self class basicNew: self basicSize.
	1 to: self runSize do:[:i|
		newValue := aBlock value: (self valueAtRun: i).
		newArray setRunAt: i toLength: (self lengthAtRun: i) value: newValue.
	].
	^newArray