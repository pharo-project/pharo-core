addCategory: aProcessor
	|titleBrick categoryBrick|
	
	titleBrick := self newTitleBrick on: self stepModel category: aProcessor.
	self themer spotterThemer categoryTitleStyleFor: titleBrick.
	self addBrickBack: titleBrick.
	
	categoryBrick := (self newCategoryBrick on: self stepModel category: aProcessor) titleBrick: titleBrick.
	self themer spotterThemer categoryStyleFor: categoryBrick .
	self addBrickBack: categoryBrick.
	
	self changed.
	
	^ categoryBrick