onCandidateSelected
	
	self stepModel selected ifNil: [ ^ self ].
	self stepModel selectedCategory = self categoryProcessor
		ifTrue: [ self showActionbar ]
		ifFalse: [
			"well, we need to check first if there are not hovered candidates for my category"
			(self isSelected not and: [
				self owner isNotNil and: [
					(self owner owner categories includesKey: self categoryProcessor) and: [ 
						(self owner owner categoryBrickFor: self categoryProcessor) isSelected not  ] ] ] )
			ifTrue: [ self hideActionbar ] ]