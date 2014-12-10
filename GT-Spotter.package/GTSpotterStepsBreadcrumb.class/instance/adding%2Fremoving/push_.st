push: aBrick
	self theme spotterWidgetThemer breadcrumbItemStyleFor: aBrick.
	
	aBrick widthBlock: [ :itemBrick | self calculateItemWidth: itemBrick ].
		
	self band addBrickBack: aBrick.
	self items addLast: aBrick.
	
	"optimization. if first item was added we need to update root to reposition all brick,
	otherwise only I need to be updated"
	self items size = 1
		ifTrue: [ self notifyBreadcrumbVisibilityChanged ]
		ifFalse: [
			self doLayout.
			self changed ].
	