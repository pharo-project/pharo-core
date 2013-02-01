as yet unclassified
newCdeclCall 
	self stackFrameCheck.
	^ calls add: (AJCdeclCallInfo new)