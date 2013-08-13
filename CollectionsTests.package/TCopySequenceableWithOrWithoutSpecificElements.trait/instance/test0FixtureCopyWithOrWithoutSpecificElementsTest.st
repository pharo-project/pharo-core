tests - fixture
test0FixtureCopyWithOrWithoutSpecificElementsTest

	self shouldnt: [self nonEmpty ] raise: Error.
	self deny: self nonEmpty 	isEmpty .
		
	self shouldnt: [self indexInNonEmpty ] raise: Error.
	self assert: self indexInNonEmpty > 0. 
	self assert: self indexInNonEmpty <= self nonEmpty size.