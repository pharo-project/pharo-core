isWidthDependsOnParent
	"Returns true if my width depends only from my parent, otherwise false.
	It means that layouter must first calculate width of my parent and only then my"
	
	^ self hResizing = #spaceFill