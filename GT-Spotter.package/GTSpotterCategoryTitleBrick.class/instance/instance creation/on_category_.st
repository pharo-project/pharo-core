on: aStepModel category: aProcessor

	stepModel := aStepModel.
	
	self nameBrick: self newNameBrick.
	self nameBrick text: aProcessor title.
			
	self amountBrick: self newAmountBrick.
	self amountBrick text: '0/0'.


	^ self