instance creation
ofPackageNamed: aPackageName
	| mb manifestClass |
	
	mb := self new. 
	manifestClass := self allManifestClasses 
		detect: [:each | each category = aPackageName  ]
		ifNone: [ nil ].
		
	manifestClass isNil 
		ifTrue: [mb createManifestNamed: aPackageName	 ] 
	 	ifFalse:[ mb manifestClass: manifestClass]. 	

	^ mb	
