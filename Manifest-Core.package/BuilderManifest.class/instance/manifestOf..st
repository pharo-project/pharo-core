accessing
manifestOf: elem

	
	packageName := self packageNameOf: elem.

	manifestClass := self class allManifestClasses 
		detect: [:each | each category = packageName  ]
		ifNone: [ nil ].
		
	^ manifestClass
		
