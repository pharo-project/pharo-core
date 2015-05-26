recentClassesElements
	^ self recentClasses mostViewedElements
		collect: [ :nm | Smalltalk at: nm ifAbsent: [nil] ]
		thenSelect: [ :e | e notNil ]