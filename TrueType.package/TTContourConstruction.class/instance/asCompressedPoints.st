converting
asCompressedPoints
	"Return the receiver compressed into a PointArray.
	All lines will be converted into bezier segments with
	the control point set to the start point"
	| out minPt maxPt fullRange |
	minPt := -16r7FFF asPoint.
	maxPt := 16r8000 asPoint.
	"Check if we need full 32bit range"
	fullRange := points anySatisfy: [:any| any asPoint < minPt or:[any asPoint > maxPt]].
	out := fullRange
		ifTrue: [(PointArray new: points size) writeStream]
		ifFalse:[(ShortPointArray new: points size) writeStream].
	self segmentsDo:[:segment|
		out nextPut: segment start.
		segment isBezier2Segment 
			ifTrue:[out nextPut: segment via]
			ifFalse:[out nextPut: segment start].
		out nextPut: segment end.
	].
	^out contents