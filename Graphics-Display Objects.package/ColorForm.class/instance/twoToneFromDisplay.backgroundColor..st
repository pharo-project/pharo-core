color manipulation
twoToneFromDisplay: aRectangle backgroundColor: bgColor
	"Copy one-bit deep ColorForm from the Display using a color map that maps all colors except the background color to black. Used for caching the contents of inactive MVC windows."

	| map |
	(width = aRectangle width and: [height = aRectangle height])
		ifFalse: [self setExtent: aRectangle extent depth: depth].

	"make a color map mapping the background color
	 to zero and all other colors to one"
	map := Bitmap new: (1 bitShift: (Display depth min: 9)).
	1 to: map size do: [:i | map at: i put: 16rFFFFFFFF].
	map at: (bgColor indexInMap: map) put: 0.

	(BitBlt current toForm: self)
		destOrigin: 0@0;
		sourceForm: Display;
		sourceRect: aRectangle;
		combinationRule: Form over;
		colorMap: map;
		copyBits.
