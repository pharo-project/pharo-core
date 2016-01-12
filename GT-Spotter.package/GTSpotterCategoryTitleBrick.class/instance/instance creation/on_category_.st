on: aStepModel category: aProcessor

	self stepModel: aStepModel.
	self categoryProcessor: aProcessor.
	
	self nameBrick: self newNameBrick.
	self nameBrick text: '#', aProcessor title.
			
	self amountBrick: self newAmountBrick.
	self amountBrick text: '0/0'.
	
	self actionbarBrick: self newActionbarBrick.
	self addDiveInButton.
	
	self onCandidateSelected.
	
	self nameBrick wrappedBounds markWidthDirty.
	self nameBrick label wrappedBounds markWidthDirty.
	self doLayoutForce.

	^ self