geometry
gridPoint: ungriddedPoint

	self griddingOn ifFalse: [^ ungriddedPoint].
	^ (ungriddedPoint - self position - self gridOrigin grid: self gridModulus)
					+ self position + self gridOrigin