uvalue: aValue
	"unsigned value"
	self assert: (aValue >=0).
	value := aValue.
	isUnsigned := true.