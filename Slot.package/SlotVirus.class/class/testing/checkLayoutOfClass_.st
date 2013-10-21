checkLayoutOfClass: cls
	self checkDuplicateClass: cls.
	self assert: cls layout isNil not.
	"self assert: cls format == cls layout format."
	cls layout checkSanity.
	cls layout hasSlots 
		ifFalse: [ ^ self].
		
	cls isMeta
		ifFalse: [ 
			(cls superclass subclasses includes: cls)
				ifFalse: [
					"self error: (cls name, ' is not properly registered as sublclass of ', cls superclass name)."
					self fixSuperclassSubclasses: cls]].
		
	self checkInheritedSlots: cls.
	
	self checkSlotsIndices: cls