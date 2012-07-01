examples
exampleColorMap
	"BitBlt exampleColorMap"
	"This example shows what one can do with the fixed part of a color map. The color map, as setup below, rotates the bits of a pixel all the way around. Thus you'll get a (sometime strange looking ;-) animation of colors which will end up exactly the way it looked at the beginning. The example is given to make you understand that the masks and shifts can be used for a lot more than simply color converting pixels. In this example, for instance, we use only two of the four independent shifters."
	| cc bb |
	cc := ColorMap 
		masks: { 
				(1 << (Display depth - 1)).	"mask out high bit of color component"
				((1 << (Display depth - 1)) - 1).	"mask all other bits"
				0.
				0
			 }
		shifts: { 
				(1 - Display depth).	"shift right to bottom most position"
				1.	"shift all other pixels one bit left"
				0.
				0
			 }.
	bb := BitBlt toForm: Display.
	bb
		sourceForm: Display;
		combinationRule: 3;
		colorMap: cc.
	1 
		to: Display depth
		do: 
			[ :i | 
			bb copyBits.
			Display forceDisplayUpdate ]