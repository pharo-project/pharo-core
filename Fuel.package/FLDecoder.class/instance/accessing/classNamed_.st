classNamed: className
	^ migrations
		detect: [ :m | m sourceClassName = className ]
		ifFound: [ :migration | migration targetClass ]
		ifNone: [ self globalClassNamed: className ]