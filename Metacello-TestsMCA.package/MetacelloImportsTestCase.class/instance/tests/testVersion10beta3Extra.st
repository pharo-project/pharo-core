testVersion10beta3Extra

	| project loadedPackages version loader |
	project := self project.

	version := project version: '1.0-beta.3-extra'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 6.
	self assert: (loadedPackages indexOf: 'Metacello-Core-dkh.1') > 0.
	self assert: (loadedPackages indexOf: 'Metacello-MC-dkh.1') >
						(loadedPackages indexOf: 'Metacello-Core-dkh.1').
	self assert: (loadedPackages indexOf: 'Metacello-Platform-dkh.1') >
						(loadedPackages indexOf: 'Metacello-Core-dkh.1').
	self assert: (loadedPackages indexOf: 'Metacello-TestsCore-dkh.1') >
						(loadedPackages indexOf: 'Metacello-Core-dkh.1').
	self assert: (loadedPackages indexOf: 'Metacello-Tutorial-dkh.1') >
						(loadedPackages indexOf: 'Metacello-Core-dkh.1').
	self assert: (loadedPackages indexOf: 'Metacello-TutorialTests-dkh.1') >
						(loadedPackages indexOf: 'Metacello-Tutorial-dkh.1').
