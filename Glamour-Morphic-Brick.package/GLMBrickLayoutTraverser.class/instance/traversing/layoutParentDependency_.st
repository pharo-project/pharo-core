layoutParentDependency: aBrick

	aBrick owner ifNil: [ ^ self markClean: aBrick. "Exception signal: 'Dimension depends on parent, but owner is nil'" ].
	(self isDependsOnChildren: aBrick owner) ifTrue: [ Error signal: 'Circle dependency detected!' ].
	
	"because I depend on my parent, it should be layouted first"
	self layoutOwnerOf: aBrick.
	"then I can update my dimension"
	self updateDimension: aBrick.
	"everething is done I can mark dimension as clean"
	self markClean: aBrick.
	"and I can say my children to layout themselves, because I'm already clean"
	self layoutChildrenOf: aBrick