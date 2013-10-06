recentClassesElements
	| classes |
	classes := self browsedEnvironment classes.
	
	^ self recentClasses mostViewedElements 
		collect: [:nm | classes 
							detect: [:e | e name = nm ] 
							ifNone: [ nil ]] 
		thenSelect: [:e | e notNil ]