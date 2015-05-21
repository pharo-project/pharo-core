testHookWithVirtualMeta

	| link node hook gen|
	link := MetaLink new 
		metaObject: #object;
		selector: #now.
	
	node := (Object>>#halt) ast copy.
	
		gen := HookGenerator new 
		initForNode: node;
		link: link.
	hook := gen hook.	
	"we have a plugin for #object"
	self assert: (gen plugins includesKey: #object).
	"we have an ast for the reification"
	self assert: (gen table includesKey: #object).		
	self assert: (hook receiver = (gen table at: #object) )