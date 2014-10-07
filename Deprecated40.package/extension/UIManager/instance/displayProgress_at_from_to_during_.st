displayProgress: titleString at: aPoint from: minVal to: maxVal during: workBlock 
	self 
		deprecated: 'Use displayProgress:at:from:to:during: instead'
		on: 	'7 October 2014' 
		in: 'UIManager'.
	^ self displayProgress: titleString at: aPoint from: minVal to: maxVal during: workBlock 