updateWidth: aBrick
	"aBrick is a Brick that uses me as current layout"
	"this method should be called only when width of aBrick is dirty"
	aBrick wrappedBounds isWidthClean ifTrue: [ Exception signal: 'Clean width can''t be updated!' ].
	"when my width depends on children I set it to be able to fit all subbricks"
	aBrick isWidthDependsOnChildren ifTrue: [ aBrick wrappedBounds width: (self normalizeWidth: (self widthChildrenDependency: aBrick) of: aBrick) ].
	"when my width depends only from myself I can directly set it"
	aBrick isWidthDependsOnMyself ifTrue: [ aBrick wrappedBounds width: (self normalizeWidth: (self widthMyselfDependency: aBrick) of: aBrick) ].
	"when my width depends only from my parent"
	aBrick isWidthDependsOnParent ifTrue: [ aBrick wrappedBounds outerWidth: (self normalizeWidth: (self widthParentDependency: aBrick) of: aBrick) ].
	
	
	