methods
	^ (clazz selectorsInCategory: protocol) 
			" filter out trait methods "
			select: [ :selector | clazz includesLocalSelector: selector ]
			thenCollect: [ :selector| clazz methodNamed: selector ]