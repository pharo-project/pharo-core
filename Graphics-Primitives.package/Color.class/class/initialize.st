initialization
initialize
	"Color initialize"
	"Details: Externally, the red, green, and blue components of color
	are floats in the range [0.0..1.0]. Internally, they are represented
	as integers in the range [0..ComponentMask] packing into a
	small integer to save space and to allow fast hashing and
	equality testing.

	For a general description of color representations for computer
	graphics, including the relationship between the RGB and HSV
	color models used here, see Chapter 17 of Foley and van Dam,
	Fundamentals of Interactive Computer Graphics, Addison-Wesley,
	1982."
	ComponentMask := 1023.
	HalfComponentMask := 512.	"used to round up in integer calculations"
	ComponentMax := 1023.0.	"a Float used to normalize components"
	RedShift := 20.
	GreenShift := 10.
	BlueShift := 0.
	PureRed := self 
		r: 1
		g: 0
		b: 0.
	PureGreen := self 
		r: 0
		g: 1
		b: 0.
	PureBlue := self 
		r: 0
		g: 0
		b: 1.
	PureYellow := self 
		r: 1
		g: 1
		b: 0.
	PureCyan := self 
		r: 0
		g: 1
		b: 1.
	PureMagenta := self 
		r: 1
		g: 0
		b: 1.
	RandomStream := Random new.
	self initializeIndexedColors.
	self initializeGrayToIndexMap.
	self initializeNames.
	self initializeHighLights