running
tearDown
	super tearDown.
	self removeCategory: self category.
	self removeCategory: self categoryWrong