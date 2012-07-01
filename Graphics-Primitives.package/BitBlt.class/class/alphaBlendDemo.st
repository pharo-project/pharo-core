examples
alphaBlendDemo
	"To run this demo, use...
		Display restoreAfter: [BitBlt alphaBlendDemo]	
	Displays 10 alphas, then lets you paint.  Option-Click to stop painting."
	"This code exhibits alpha blending in any display depth by performing
	the blend in an off-screen buffer with 32-bit pixels, and then copying
	the result back onto the screen with an appropriate color map. - tk 3/10/97"
	"This version uses a sliding buffer for painting that keeps pixels in 32 bits
	as long as they are in the buffer, so as not to lose info by converting down
	to display resolution and back up to 32 bits at each operation. - di 3/15/97"
	"compute color maps if needed"
	| brush buff dispToBuff buffToDisplay mapDto32 map32toD prevP p brushToBuff theta buffRect buffSize buffToBuff brushRect delta newBuffRect updateRect |
	Display depth <= 8 ifTrue: 
		[ mapDto32 := Color 
			cachedColormapFrom: Display depth
			to: 32.
		map32toD := Color 
			cachedColormapFrom: 32
			to: Display depth ].

	"display 10 different alphas, across top of screen"
	buff := Form 
		extent: 500 @ 50
		depth: 32.
	dispToBuff := BitBlt toForm: buff.
	dispToBuff colorMap: mapDto32.
	dispToBuff 
		copyFrom: (50 @ 10 extent: 500 @ 50)
		in: Display
		to: 0 @ 0.
	1 
		to: 10
		do: 
			[ :i | 
			dispToBuff 
				fill: ((50 * (i - 1)) @ 0 extent: 50 @ 50)
				fillColor: (Color red alpha: i / 10)
				rule: Form blend ].
	buffToDisplay := BitBlt toForm: Display.
	buffToDisplay colorMap: map32toD.
	buffToDisplay 
		copyFrom: buff boundingBox
		in: buff
		to: 50 @ 10.

	"Create a brush with radially varying alpha"
	brush := Form 
		extent: 30 @ 30
		depth: 32.
	1 
		to: 5
		do: 
			[ :i | 
			brush 
				fillShape: (Form dotOfSize: brush width * (6 - i) // 5)
				fillColor: (Color red alpha: 0.02 * i - 0.01)
				at: brush extent // 2 ].

	"Now paint with the brush using alpha blending."
	buffSize := 100.
	buff := Form 
		extent: brush extent + buffSize
		depth: 32.	"Travelling 32-bit buffer"
	dispToBuff := BitBlt toForm: buff.	"This is from Display to buff"
	dispToBuff colorMap: mapDto32.
	brushToBuff := BitBlt toForm: buff.	"This is from brush to buff"
	brushToBuff
		sourceForm: brush;
		sourceOrigin: 0 @ 0.
	brushToBuff combinationRule: Form blend.
	buffToBuff := BitBlt toForm: buff.	"This is for slewing the buffer"
	[ Sensor yellowButtonPressed ] whileFalse: 
		[ prevP := nil.
		buffRect := Sensor cursorPoint - (buffSize // 2) extent: buff extent.
		dispToBuff 
			copyFrom: buffRect
			in: Display
			to: 0 @ 0.
		[ Sensor redButtonPressed ] whileTrue: 
			[ "Here is the painting loop"
			p := Sensor cursorPoint - (brush extent // 2).
			(prevP == nil or: [ prevP ~= p ]) ifTrue: 
				[ prevP == nil ifTrue: [ prevP := p ].
				(p dist: prevP) > buffSize ifTrue: 
					[ "Stroke too long to fit in buffer -- clip to buffer,
						and next time through will do more of it"
					theta := (p - prevP) theta.
					p := (theta cos @ theta sin * buffSize asFloat + prevP) truncated ].
				brushRect := p extent: brush extent.
				(buffRect containsRect: brushRect) ifFalse: 
					[ "Brush is out of buffer region.  Scroll the buffer,
						and fill vacated regions from the display"
					delta := brushRect amountToTranslateWithin: buffRect.
					buffToBuff 
						copyFrom: buff boundingBox
						in: buff
						to: delta.
					newBuffRect := buffRect translateBy: delta negated.
					(newBuffRect areasOutside: buffRect) do: 
						[ :r | 
						dispToBuff 
							copyFrom: r
							in: Display
							to: r origin - newBuffRect origin ].
					buffRect := newBuffRect ].

				"Interpolate from prevP to p..."
				brushToBuff 
					drawFrom: prevP - buffRect origin
					to: p - buffRect origin
					withFirstPoint: false.

				"Update (only) the altered pixels of the destination"
				updateRect := (p min: prevP) corner: (p max: prevP) + brush extent.
				buffToDisplay 
					copy: updateRect
					from: updateRect origin - buffRect origin
					in: buff.
				prevP := p ] ] ]