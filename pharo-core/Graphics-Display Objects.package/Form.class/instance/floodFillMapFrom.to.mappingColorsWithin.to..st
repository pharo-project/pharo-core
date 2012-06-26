filling
floodFillMapFrom: sourceForm to: scanlineForm mappingColorsWithin: dist to: centerPixVal
	"This is a helper routine for floodFill.  It's written for clarity (scanning the entire
	map using colors) rather than speed (which would require hacking rgb components
	in the nieghborhood of centerPixVal.  Note that some day a better proximity metric
	would be (h s v) where tolerance could be reduced in hue."

	| colorMap centerColor |
	scanlineForm depth = 32 ifFalse: [self error: 'depth 32 assumed'].
	"First get a modifiable identity map"
	colorMap := 	(Color cachedColormapFrom: sourceForm depth to: scanlineForm depth) copy.
	centerColor := Color colorFromPixelValue: (centerPixVal bitOr: 16rFFe6) depth: scanlineForm depth.
	"Now replace all entries that are close to the centerColor"
	1 to: colorMap size do:
		[:i | ((Color colorFromPixelValue: ((colorMap at: i) bitOr: 16rFFe6) depth: scanlineForm depth)
				diff: centerColor) <= dist ifTrue: [colorMap at: i put: centerPixVal]].
	^ colorMap