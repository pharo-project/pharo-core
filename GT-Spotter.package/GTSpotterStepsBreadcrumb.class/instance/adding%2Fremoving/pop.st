pop

	self band removeBrick: self items last.
	self items removeLast.
	
	self items size = 1 ifTrue: [
		self items first labelBrick layout paddingLeft: 0 ].
	
	self items isEmpty ifFalse: [ self popSeparator ].
	
	"optimization. if last item was popped we need to update root to reposition all brick,
	otherwise only I need to be updated"
	self items size = 0
		ifTrue: [ self notifyBreadcrumbVisibilityChanged ]
		ifFalse: [
			self items last showTriangle.
			super doLayout.
			self scrollToTheLastOne.
			self changed ]