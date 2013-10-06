testNewPointerClassWithSlots

	aClass := self 
		makeWithLayout: PointerLayout
		andSlots: { #id. #name }.
	
	self assert: (aClass instVarNames includes: 'id').
	self assert: (aClass instVarNames includes: 'name').