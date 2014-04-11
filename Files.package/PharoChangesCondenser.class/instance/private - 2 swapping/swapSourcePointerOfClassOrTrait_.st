swapSourcePointerOfClassOrTrait: classOrTrait

	self swapClassComment: classOrTrait.
	
	classOrTrait methodsDo: [ :method | 
		self swapSourcePointerOfMethod: method ].
	
	classOrTrait class methodsDo: [ :method | 
		self swapSourcePointerOfMethod: method ]