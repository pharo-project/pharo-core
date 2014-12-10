addCategory: aProcessor
	|titleBrick categoryBrick|
	
	titleBrick := self newTitleBrick on: self stepModel category: aProcessor.
	self theme spotterWidgetThemer categoryTitleStyleFor: titleBrick.
	self addBrickBack: titleBrick.
	
	categoryBrick := (self newCategoryBrick on: self stepModel category: aProcessor) titleBrick: titleBrick.
	self theme spotterWidgetThemer categoryStyleFor: categoryBrick .
	self addBrickBack: categoryBrick.
	
	^ categoryBrick