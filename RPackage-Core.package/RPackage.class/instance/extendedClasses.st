accessing
extendedClasses 
	"Return classes and metaclasses that are extended in the receiver"
	^ (metaclassExtensionSelectors keys 
		select: [ :each| Smalltalk globals includesKey: each ]
		thenCollect: [:each | (Smalltalk globals at: each) class])
			union:  (classExtensionSelectors keys 
						select: [ :each| Smalltalk globals includesKey: each ]
						thenCollect: [:each | Smalltalk globals at: each])