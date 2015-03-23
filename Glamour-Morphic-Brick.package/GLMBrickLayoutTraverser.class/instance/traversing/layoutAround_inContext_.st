layoutAround: aBrick inContext: aContextBrick
	"want to layout non-Brick object? nice try, bro."
	aBrick isBrick ifFalse: [ ^ self ].
	"if my dimension is clean why do you want to layout me?"
	(self isClean: aBrick) ifTrue: [ ^ self ].
	aBrick changed.
	"custom dependencies are very dangerous, as it's complicated
	to detect cycles fast"
	(self customDependencies: aBrick)
		do: [ :each | |b|
			[ b :=  each brickValue: aBrick ] on: Exception do: [ b := nil ] .
			b ifNotNil: [ self layoutAround: b inContext: aBrick ] ].
		
	"children and parent dependencies must be before myself,
	because custom dimension can theoretically depend on children or parent"
	(self isDependsOnChildren: aBrick) ifTrue: [
		self layoutChildrenDependency: aBrick ].
	
	(self isDependsOnParent: aBrick) ifTrue: [
		self layoutParentDependency: aBrick ].
	
	(self isDependsOnMyself: aBrick) ifTrue: [
		self layoutMyselftDependency: aBrick ].
	
	(self isDependsOnOpposite: aBrick) ifTrue: [
		self layoutOppositeDependency: aBrick ].
	
	(self isOppositeDependsOn: aBrick) ifTrue: [
		self opposite layoutAround: aBrick inContext: nil ].
	
	"and finally we position them"
	self layoutSubbricks: aBrick.
	self layoutSubbricks: aBrick owner.
	
	aBrick changed.
