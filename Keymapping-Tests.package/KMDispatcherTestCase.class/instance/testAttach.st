tests
testAttach
	| morph category |
	category := KMCategory named: #TestBlah.	
	morph := BorderedMorph new.
	morph kmDispatcher targets isEmpty ifFalse: [ self error: 'should be empty' ].
	KMRepository default addCategory: category.
	morph attachKeymapCategory: #TestBlah.
	morph attachKeymapCategory: #TestBlah.
	self assert: morph kmDispatcher targets size equals: 1.