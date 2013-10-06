expandStack
	"If the last element of the visible stack is selected, expand the stack,
	if more elements are available."
	
	self stack selectedItem ifNil: [ ^ self ]. 
	
	self stack listItems ifNotNil: [ :aList |
		(self stack selectedIndex = self stack listSize and: [
			self stack selectedItem sender notNil ]) ifTrue: [ 
				self toolbar expandStackBy: self class defaultStackSize ] ]
	