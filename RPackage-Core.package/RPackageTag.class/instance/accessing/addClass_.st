addClass: aClass
	aClass package removeClass: aClass.
	self package addClass: aClass.
	^ self addClassNamed: aClass name.