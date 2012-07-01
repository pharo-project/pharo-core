target access
acceptValueFromTarget: v
	"Accept a value from the target"

	lastValue := v.
	self format == #string ifTrue: [^ v asString].
	self format == #symbol ifTrue: [^ v asString translated].
	(format == #default and: [v isNumber]) ifTrue:
		[^ self stringForNumericValue: v].
	^ v printString translated