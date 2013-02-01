as yet unclassified
newStdCall
	self stackFrameCheck.
	^ calls add: (AJStdCallCallInfo new)
