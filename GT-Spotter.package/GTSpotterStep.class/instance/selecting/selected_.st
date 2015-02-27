selected: aDoubleLink
	
	self selected = aDoubleLink ifTrue: [ ^ self ].
	
	self spotter
		after: [
			selected := aDoubleLink.
			self notifySelectedCandidateChanged: selected ]
		do: [ self spotter notifyCategorySelected: self selected processor ]
		ifTrue: [ aDoubleLink
			ifNotNil: [ self selected
				ifNotNil: [ (self selected processor = aDoubleLink processor) not ]
				ifNil: [ true ] ]
			ifNil: [ false ] ]
	
	