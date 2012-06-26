examples
antiAliasDemo
	"To run this demo, use...
		Display restoreAfter: [BitBlt antiAliasDemo]
	Goes immediately into on-screen paint mode.  Option-Click to stop painting."
	"This code exhibits alpha blending in any display depth by performing
	the blend in an off-screen buffer with 32-bit pixels, and then copying
	the result back onto the screen with an appropriate color map. - tk 3/10/97"
	"This version uses a sliding buffer for painting that keeps pixels in 32 bits
	as long as they are in the buffer, so as not to lose info by converting down
	to display resolution and back up to 32 bits at each operation. - di 3/15/97"
	"This version also uses WarpBlt to paint into twice as large a buffer,
	and then use smoothing when reducing back down to the display.
	In fact this same routine will now work for 3x3 soothing as well.
	Remove the statements 'buff displayAt: 0@0' to hide the buffer. - di 3/19/97"
	"compute color maps if needed"
	| brush buff dispToBuff buffToDisplay mapDto32 map32toD prevP p brushToBuff theta buffRect buffSize buffToBuff brushRect delta newBuffRect updateRect scale p0 |
	Display depth <= 8 ifTrue: 
		[ mapDto32 := Color 
			cachedColormapFrom: Display depth
			to: 32.
		map32toD := Color 
			cachedColormapFrom: 32
			to: Display depth ].

	"Create a brush with radially varying alpha"
	brush := Form 
		extent: 3 @ 3
		depth: 32.
	brush 
		fill: brush boundingBox
		fillColor: (Color red alpha: 0.05).
	brush 
		fill: (1 @ 1 extent: 1 @ 1)
		fillColor: (Color red alpha: 0.2).
	scale := 2.	"Actual drawing happens at this magnification"
	"Scale brush up for painting in magnified buffer"
	brush := brush 
		magnify: brush boundingBox
		by: scale.

	"Now paint with the brush using alpha blending."
	buffSize := 100.
	buff := Form 
		extent: (brush extent + buffSize) * scale
		depth: 32.	"Travelling 32-bit buffer"
	dispToBuff := (WarpBlt toForm: buff)
		sourceForm: Display;
		colorMap: mapDto32;
		combinationRule: Form over.	"From Display to buff - magnify by 2"
	brushToBuff := (BitBlt toForm: buff)
		sourceForm: brush;
		sourceOrigin: 0 @ 0;
		combinationRule: Form blend.	"From brush to buff"
	buffToDisplay := (WarpBlt toForm: Display)
		sourceForm: buff;
		colorMap: map32toD;
		cellSize: scale;
		combinationRule: Form over.	"From buff to Display - shrink by 2"	"...and use smoothing"
	buffToBuff := BitBlt toForm: buff.	"This is for slewing the buffer"
	[ Sensor yellowButtonPressed ] whileFalse: 
		[ prevP := nil.
		buffRect := Sensor cursorPoint - (buff extent // scale // 2) extent: buff extent // scale.
		p0 := buff extent // 2 - (buffRect extent // 2).
		dispToBuff 
			copyQuad: buffRect innerCorners
			toRect: buff boundingBox.
		buff displayAt: 0 @ 0.	"** remove to hide sliding buffer **"
		[ Sensor redButtonPressed ] whileTrue: 
			[ "Here is the painting loop"
			p := Sensor cursorPoint - buffRect origin + p0.	"p, prevP are rel to buff origin"
			(prevP == nil or: [ prevP ~= p ]) ifTrue: 
				[ prevP == nil ifTrue: [ prevP := p ].
				(p dist: prevP) > (buffSize - 1) ifTrue: 
					[ "Stroke too long to fit in buffer -- clip to buffer,
						and next time through will do more of it"
					theta := (p - prevP) theta.
					p := (theta cos @ theta sin * (buffSize - 2) asFloat + prevP) truncated ].
				brushRect := p extent: brush extent.
				((buff boundingBox insetBy: scale) containsRect: brushRect) ifFalse: 
					[ "Brush is out of buffer region.  Scroll the buffer,
						and fill vacated regions from the display"
					delta := (brushRect amountToTranslateWithin: (buff boundingBox insetBy: scale)) // scale.
					buffToBuff 
						copyFrom: buff boundingBox
						in: buff
						to: delta * scale.
					newBuffRect := buffRect translateBy: delta negated.
					p := p translateBy: delta * scale.
					prevP := prevP translateBy: delta * scale.
					(newBuffRect areasOutside: buffRect) do: 
						[ :r | 
						dispToBuff 
							copyQuad: r innerCorners
							toRect: ((r origin - newBuffRect origin) * scale extent: r extent * scale) ].
					buffRect := newBuffRect ].

				"Interpolate from prevP to p..."
				brushToBuff 
					drawFrom: prevP
					to: p
					withFirstPoint: false.
				buff displayAt: 0 @ 0.	"** remove to hide sliding buffer **"

				"Update (only) the altered pixels of the destination"
				updateRect := (p min: prevP) corner: (p max: prevP) + brush extent.
				updateRect := updateRect origin // scale * scale corner: (updateRect corner + scale) // scale * scale.
				buffToDisplay 
					copyQuad: updateRect innerCorners
					toRect: (updateRect origin // scale + buffRect origin extent: updateRect extent // scale).
				prevP := p ] ] ]