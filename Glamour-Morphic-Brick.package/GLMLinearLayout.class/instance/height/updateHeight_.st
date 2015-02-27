updateHeight: aBrick
	"this method should be called only when height of aBrick is dirty"
	aBrick wrappedBounds isHeightClean ifTrue: [ Exception signal: 'Clean height can''t be updated!' ].
	"when my height depends on children I set it to be able to fit the highest subbrick"
	aBrick isHeightDependsOnChildren ifTrue: [ aBrick wrappedBounds height: (self normalizeHeight: (self heightChildrenDependency: aBrick) of: aBrick) ].
	"when my height depends only from myself I can directly set it"
	aBrick isHeightDependsOnMyself ifTrue: [ aBrick wrappedBounds height: (self normalizeHeight: (self heightMyselfDependency: aBrick) of: aBrick) ].
	"when my height depends only from my parent"
	aBrick isHeightDependsOnParent ifTrue: [ aBrick wrappedBounds outerHeight: (self normalizeHeight: (self heightParentDependency: aBrick) of: aBrick) ].
	
	
	