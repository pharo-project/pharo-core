installingIn: aClass
	super installingIn: aClass.
	"we check on the slot level as the slot is hidden"
	(aClass layout allSlots identityIncludes: baseSlot) ifTrue: [ ^self ]. 
	"here we need to be more clever: if a subclass defines it, 
	move the difiniton here"
	self flag: #TBD.
	aClass addSlot: baseSlot.
	