drop shadows
hasRolloverBorder
	"answer whether the receiver has RolloverBorder"
	^ self
		valueOfProperty: #hasRolloverBorder
		ifAbsent: [false]