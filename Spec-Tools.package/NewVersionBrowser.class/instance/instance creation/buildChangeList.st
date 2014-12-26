buildChangeList
	rgMethod sourcePointer ifNil:[^#[]].
		
	^ self
		scanVersionsOf: rgMethod
		class: rgMethod realClass theNonMetaClass
		meta: rgMethod realClass isMeta
		category: rgMethod category
		selector: rgMethod selector.