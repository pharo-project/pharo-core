addItem: aBrick

	self items size = 1 ifTrue: [
		self items first labelBrick layout paddingLeft: self themer spotterThemer breadcrumbSeparatorWidth / 2 ].
	self band addBrickBack: aBrick.
	self items addLast: aBrick