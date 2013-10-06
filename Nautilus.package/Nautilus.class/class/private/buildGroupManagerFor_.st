buildGroupManagerFor: anInstance

	| holder |
	holder := GroupHolder new.
	(holder 
		addADynamicClassGroupSilentlyNamed: 'Most Viewed Classes' 
		block: [ anInstance recentClassesElements ]) removable: false.
	(holder
		addADynamicClassGroupSilentlyNamed: 'Last Modified Classes'
		block: [ self lastModifiedClasses ]) removable: false.
		
	(holder
		addADynamicGroupSilentlyNamed: 'Work'
		block: [ {} ]) removable: true; isFillable: true.
		
	^ holder
			