tests - fixture
test0FixturePutOneOrMoreElementsTest
	self shouldnt: self aValue raise: Error.

	
	self shouldnt: self indexArray  raise: Error.
	self indexArray do: [
		:each| 
		self assert: each class = SmallInteger. 
		self assert: (each>=1 & each<= self nonEmpty size).
		].
	
	self assert: self indexArray size = self valueArray size.
	
	self shouldnt: self empty raise: Error.
	self assert: self empty isEmpty .
	
	self shouldnt: self nonEmpty  raise: Error.
	self deny: self nonEmpty  isEmpty.