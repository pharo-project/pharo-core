action
defaultAction

	^ UIManager default 
		displayProgress: progressTitle 
		from: minVal 
		to: maxVal 
		during: workBlock