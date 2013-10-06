basicWeakLayoutFor: aClass
	^ aClass superclass layout extendWeak: (self layoutScopeFor: aClass)