private
doDrag: evt with: dragHandle
	| thePoint |
	evt hand obtainHalo: self.
	thePoint := target point: evt position - positionOffset from: owner.
	target setConstrainedPosition:(target griddedPoint: thePoint) hangOut: true.
