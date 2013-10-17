lookupVar: name

	name = 'self' ifTrue: [  ^outerScope lookupVar: name].
	name = 'super' ifTrue: [  ^outerScope lookupVar: name].
	name first isUppercase ifTrue: [ ^outerScope lookupVar: name ]. 
	
	(requestor bindingOf: name asSymbol) ifNotNilDo: [:assoc | 
		^ OCLiteralVariable new assoc: assoc; scope: self; yourself].
	^ super lookupVar: name.
