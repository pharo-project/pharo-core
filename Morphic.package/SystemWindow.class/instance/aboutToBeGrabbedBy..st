dropping/grabbing
aboutToBeGrabbedBy: aHand	
	super aboutToBeGrabbedBy: aHand.	
	self valueOfProperty: #clickPoint ifPresentDo: [:firstClick | 
		self position: aHand position + (self position - firstClick).
		self removeProperty: #clickPoint]