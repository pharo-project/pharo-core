closestPixelValue4
	"Return the nearest approximation to this color for a 4-bit deep Form."
	"fast special cases"
	| bIndex |
	rgb = 0 ifTrue: [ ^ 1 ].	"black"
	rgb = 1073741823 ifTrue: [ ^ 2 ].	"opaque white"
	rgb = PureRed privateRGB ifTrue: [ ^ 4 ].
	rgb = PureGreen privateRGB ifTrue: [ ^ 5 ].
	rgb = PureBlue privateRGB ifTrue: [ ^ 6 ].
	rgb = PureCyan privateRGB ifTrue: [ ^ 7 ].
	rgb = PureYellow privateRGB ifTrue: [ ^ 8 ].
	rgb = PureMagenta privateRGB ifTrue: [ ^ 9 ].
	bIndex := (self luminance * 8.0) rounded.	"bIndex in [0..8]"
	^ #(1 10 11 12 3 13 14 15 2 ) at: bIndex + 1	"black"	"1/8 gray"	"2/8 gray"	"3/8 gray"	"4/8 gray"	"5/8 gray"	"6/8 gray"	"7/8 gray"	"opaque white"