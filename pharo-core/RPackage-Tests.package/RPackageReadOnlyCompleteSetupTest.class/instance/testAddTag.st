test tag class
testAddTag
	"self debug: #testAddTag"
	
	self assert: p1 tags isEmpty.
	p1 addClassTag: #baz. 
	self assert: (p1 tags includes: #baz).
	self assert: (p1 tags size = 1).
	
	p1 addClassDefinitionName: #A1DefinedInP1 toClassTag: #foo.
	p1 addClassDefinitionName: #B1DefinedInP1 toClassTag: #foo.
	self assert: (p1 tags includes: #foo).
	self assert: (p1 tags size = 2).
	self assert: ((p1 classesForClassTag: #foo) includes: #A1DefinedInP1).
	self assert: ((p1 classesForClassTag: #foo) includes: #B1DefinedInP1).
	self assert: ((p1 classesForClassTag: #foo) size = 2).
	
	p1 addClassTag: #foo. 
	self assert: (p1 tags includes: #baz).
	self assert: (p1 tags includes: #foo).
	self assert: ((p1 classesForClassTag: #foo) includes: #A1DefinedInP1).
	self assert: ((p1 classesForClassTag: #foo) includes: #B1DefinedInP1).
	self assert: ((p1 classesForClassTag: #foo) size = 2).