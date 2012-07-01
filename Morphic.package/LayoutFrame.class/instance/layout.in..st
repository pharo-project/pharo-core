layout
layout: oldBounds in: newBounds
	"Return the proportional rectangle insetting the given bounds"
	| left right top bottom |
	leftFraction ifNotNil:[
		left := newBounds left + (newBounds width * leftFraction).
		leftOffset ifNotNil:[left := left + leftOffset]].
	rightFraction ifNotNil:[
		right := newBounds right - (newBounds width * (1.0 - rightFraction)).
		rightOffset ifNotNil:[right := right + rightOffset]].
	topFraction ifNotNil:[
		top := newBounds top + (newBounds height * topFraction).
		topOffset ifNotNil:[top := top + topOffset]].
	bottomFraction ifNotNil:[
		bottom := newBounds bottom - (newBounds height * (1.0 - bottomFraction)).
		bottomOffset ifNotNil:[bottom := bottom + bottomOffset]].
	left ifNil:[ right 
			ifNil:[left := oldBounds left. right := oldBounds right]
			ifNotNil:[left := right - oldBounds width]].
	right ifNil:[right := left + oldBounds width].
	top ifNil:[ bottom 
			ifNil:[top := oldBounds top. bottom := oldBounds bottom]
			ifNotNil:[top := bottom - oldBounds height]].
	bottom ifNil:[bottom := top + oldBounds height].
	^(left rounded @ top rounded) corner: (right rounded @ bottom rounded)