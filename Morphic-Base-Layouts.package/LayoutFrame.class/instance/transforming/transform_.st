transform: rect

	"Answer a new rectangle which is an original rectangle transformed by receiver"

	^ Rectangle
		left: (rect left + (rect width * leftFraction) + leftOffset) rounded asInteger 
		right: (rect right - (rect width * (1 - rightFraction)) + rightOffset) rounded asInteger
		top: (rect top + (rect height * topFraction) + topOffset ) rounded asInteger
		bottom: (rect bottom - (rect height * (1 - bottomFraction)) + bottomOffset) rounded asInteger. 