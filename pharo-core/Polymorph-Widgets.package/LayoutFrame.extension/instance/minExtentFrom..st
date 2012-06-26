*Polymorph-Widgets-override
minExtentFrom: minExtent
	"Return the minimal extent the given bounds can be represented in."
	
	|width height widthProp heightProp leftO rightO topO bottomO|
	leftO := leftOffset ifNil: [0].
	rightO := rightOffset ifNil: [0].
	topO := topOffset ifNil: [0].
	bottomO := bottomOffset ifNil: [0].
	"calculate proportional area. bottom/right offsets extend in +ve direction."
	width := minExtent x + leftO - rightO.
	height := minExtent y + topO - bottomO.
	"calculate the effective proportion"
	widthProp := (rightFraction ifNil: [1.0]) - (leftFraction ifNil: [0]).
	heightProp := (bottomFraction ifNil: [1.0]) - (topFraction ifNil: [0]).
	"if the proportions are 0 then the minima cannot be determined and
	minExtent cannot be respected."
	width := widthProp = 0
		ifTrue: [0]
		ifFalse: [width / widthProp].
	height := heightProp = 0
		ifTrue: [0]
		ifFalse: [height / heightProp].
	^width truncated @ height truncated