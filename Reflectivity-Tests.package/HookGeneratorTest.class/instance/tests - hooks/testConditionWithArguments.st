testConditionWithArguments

	| link node hook gen|
	link := MetaLink new 
		metaObject: Halt;
		condition: [ :object | true ];
		selector: #now.
	
	node := (Object>>#halt) ast copy.
	gen := HookGenerator node: node link: link. 	
	hook := gen hook.	
	"we have a plugin for #object"
	self assert: (gen plugins includesKey: #object).
	"we have an ast for the reification"
	self assert: (gen table includesKey: #object).		
	
	self assert: (hook receiver arguments first  = (gen table at: #object) )