checkMethodsForClass: aClass
	^ aClass methods
		do: [:each | 
			rule checkMethod: each.
			methodBlock value]