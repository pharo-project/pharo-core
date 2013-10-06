testAddTagNames
	"self debug: #testAddTag"
	
	self assert: p1 classTags isEmpty.
	p1 addClassTag: #baz. 
	self assert: (p1 classTags includes: #baz).
	self assert: (p1 classTags size = 1).
	
	p1 addClassDefinitionName: #A1DefinedInP1 toClassTag: #foo.
	p1 addClassDefinitionName: #B1DefinedInP1 toClassTag: #foo.
	self assert: (p1 classTags includes: #foo).
	self assert: (p1 classTags size = 2).
	self assert: ((p1 classNamesForClassTag: #foo) includes: #A1DefinedInP1).
	self assert: ((p1 classNamesForClassTag: #foo) includes: #B1DefinedInP1).
	self assert: ((p1 classNamesForClassTag: #foo) size = 2).
	
	p1 addClassTag: #foo. 
	self assert: (p1 classTags includes: #baz).
	self assert: (p1 classTags includes: #foo).
	self assert: ((p1 classNamesForClassTag: #foo) includes: #A1DefinedInP1).
	self assert: ((p1 classNamesForClassTag: #foo) includes: #B1DefinedInP1).
	self assert: ((p1 classNamesForClassTag: #foo) size = 2).