private
initializeTotals
	"Initialize totalA through totalE to their seed values."

	"total registers for use when primitives are absent"
	totalA := ThirtyTwoBitRegister new load: 16r67452301.
	totalB := ThirtyTwoBitRegister new load: 16rEFCDAB89.
	totalC := ThirtyTwoBitRegister new load: 16r98BADCFE.
	totalD := ThirtyTwoBitRegister new load: 16r10325476.
	totalE := ThirtyTwoBitRegister new load: 16rC3D2E1F0.
	self initializeTotalsArray.
