enumerating
segmentsDo: aBlock
	"Evaluate aBlock with the segments of the receiver. This may either be straight line
	segments or quadratic bezier curves. The decision is made upon the type flags
	in TTPoint as follows:
	a) 	Two subsequent #OnCurve points define a straight segment
	b) 	An #OnCurve point followed by an #OffCurve point followed 
		by an #OnCurve point defines a quadratic bezier segment
	c)	Two subsequent #OffCurve points have an implicitely defined 
		#OnCurve point at half the distance between them"
	| last next mid index i |
	last := points first.
	"Handle case where first point is off-curve"
	(last type == #OnCurve) ifFalse: [
		i := points findFirst: [:pt | pt type == #OnCurve].
		i = 0
			ifTrue: [mid := TTPoint new
							type: #OnCurve;
							x: points first x + points last x // 2;
							y: points first y + points last y // 2.
					points := (Array with: mid), points]
			ifFalse: [points := (points copyFrom: i to: points size), (points copyFrom: 1 to: i)].
		last := points first].
	index := 2.
	[index <= points size] whileTrue:[
		mid := points at: index.
		mid type == #OnCurve ifTrue:[
			"Straight segment"
			aBlock value: (LineSegment from: last asPoint to: mid asPoint).
			last := mid.
		] ifFalse:["Quadratic bezier"
			"Read ahead if the next point is on curve"
			next := (index < points size) ifTrue:[points at: (index+1)] ifFalse:[points first].
			next type == #OnCurve ifTrue:[
				"We'll continue after the end point"
				index := index + 1.
			] ifFalse:[ "Calculate center"
				next := (next asPoint + mid asPoint) // 2].
			aBlock value:(Bezier2Segment from: last asPoint via: mid asPoint to: next asPoint).
			last := next].
		index := index + 1].
	(index = (points size + 1)) ifTrue:[
		aBlock value:(LineSegment from: points last asPoint to: points first asPoint)]