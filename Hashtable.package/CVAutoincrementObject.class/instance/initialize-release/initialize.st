initialize
	super initialize.
	NextHash = SmallInteger maxVal ifTrue: [
		NextHash := 0 ].
	NextHash := NextHash + 1.
	hash := NextHash