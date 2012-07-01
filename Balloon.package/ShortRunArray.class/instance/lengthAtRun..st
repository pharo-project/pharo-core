accessing
lengthAtRun: index
	"Return the length of the run starting at the given index"
	^(self basicAt: index) bitShift: -16