correspondingMcPackage
	"Answers the corresponding MCPackage. 
	 Normally it should exist, but in certain patterns could happen that the monticello package is not there. "
	self deprecated: 'use #mcPackage' on: '16 July 2014'  in: 'Pharo4'.
	
	^ MCWorkingCopy allManagers 
		detect: [  :each | each package name = name ]
		ifFound: [ :workingCopy | workingCopy package  ]
		ifNone: [ nil ].
	