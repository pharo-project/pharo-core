beSmoothCurve
	smoothCurve == true
		ifFalse: [ 
			smoothCurve := true.
			self computeBounds ]