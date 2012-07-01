as yet unclassified
testNewFinalizationSupported
	| list item |

	list := WeakFinalizationList new.
	
	
	item := WeakFinalizerItem new list: list object: Object new executor: nil.
	
	self assert: (list first isNil).
	self assert: (item object notNil).
	
	Smalltalk garbageCollect.
	
	self assert: (item object isNil).
	self assert: (list first == item).
	self assert: (list first next == nil).