infoview
extraInfo
	^ (self
		methodDiffFor: (self selectedClassOrMetaClass sourceCodeAt: self selectedMessageName)
		class: self selectedClass
		selector: self selectedMessageName
		meta: self metaClassIndicated) unembellished
			ifTrue: [' - identical']
			ifFalse: [' - modified']