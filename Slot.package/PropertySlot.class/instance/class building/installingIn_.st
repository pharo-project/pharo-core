installingIn: aClass
	super installingIn: aClass.
	
	
	self flag: #TBD. "for now hasSlot should check for both hidden and non hidden"
	(aClass hasSlot: baseSlot) ifTrue: [ ^self ]. 
	"here we need to be more clever: if a subclass defines it, 
	move the difiniton here"
	self flag: #TBD.
	aClass addSlot: baseSlot.
	