tests - fixture
test0FixtureDictionaryIncludes
	| in |
	self	shouldnt: [ self nonEmpty ]raise: Error.
	self deny: self nonEmpty isEmpty.
	
	
	self shouldnt: [ self valueNotInNonEmpty ] raise: Error.
	in := false.
	self nonEmpty valuesDo: [ :assoc | assoc = self valueNotInNonEmpty ifTrue: [ in := true ] ].
	self assert: in = false.
	

	self shouldnt: [ self keyNotInNonEmpty ] raise: Error.
	in := false.
	self nonEmpty keysDo: [ :assoc | assoc = self keyNotInNonEmpty ifTrue: [ in := true ] ].
	self assert: in = false