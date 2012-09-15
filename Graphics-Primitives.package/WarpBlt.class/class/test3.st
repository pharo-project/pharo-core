examples
test3
	"Display restoreAfter: [WarpBlt test3]"
	"The Squeak Release Mandala"
	"Move the mouse near the center of the square.
	Up and down affects shrink/grow
	Left and right affect rotation angle"
	| warp pts p0 box map d p |
	box := 100 @ 100 extent: 300 @ 300.
	Display 
		border: (box expandBy: 2)
		width: 2.

	"Make a color map that steps through the color space"
	map := (Display depth > 8 
		ifTrue: 
			[ "RGB is a bit messy..."
			d := Display depth = 16 
				ifTrue: [ 5 ]
				ifFalse: [ 8 ].
			(1 to: 512) collect: 
				[ :i | | t | 
				t := i bitAnd: 511.
				((t bitAnd: 7) bitShift: d - 3) + ((t bitAnd: 56) bitShift: (d - 3) * 2) + ((t bitAnd: 448) bitShift: (d - 3) * 3) ] ]
		ifFalse: 
			[ "otherwise simple"
			1 to: (1 bitShift: Display depth) ]) as: Bitmap.
	warp := (WarpBlt toForm: Display)
		clipRect: box;
		sourceForm: Display;
		colorMap: map;
		combinationRule: Form over.
	p0 := box center.
	[ Sensor anyButtonPressed ] whileFalse: 
		[ p := Sensor cursorPoint.
		pts := (box insetBy: p y - p0 y) innerCorners collect: 
			[ :pt | 
			pt 
				rotateBy: (p x - p0 x) / 50.0
				about: p0 ].
		warp 
			copyQuad: pts
			toRect: box ]