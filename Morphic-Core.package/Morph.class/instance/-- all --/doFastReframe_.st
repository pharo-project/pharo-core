doFastReframe: ptName

	| newBounds |
	"For fast display, only higlight the rectangle during loop"
	newBounds := self boundsInWorld newRectButtonPressedDo: [:f :pt | 
		f 
			withSideOrCorner: ptName
			setToPoint: pt
			minExtent: self minimumExtent].
	Display deferUpdatesIn: Display boundingBox while: [
		self bounds: newBounds].

	^newBounds.