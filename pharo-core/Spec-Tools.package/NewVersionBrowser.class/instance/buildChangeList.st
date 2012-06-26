instance creation
buildChangeList
	| method |
	
	(class isNil or: [ selector isNil ])	ifTrue: [ ^ #() ].
	method := (class>>selector).
		
	^ self
		scanVersionsOf: method
		class: class theNonMetaClass
		meta: class isMeta
		category: method category
		selector: selector.