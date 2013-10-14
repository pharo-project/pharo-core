testVersion10beta3

	| project loadedPackages version loader |
	project := self project.

	version := project version: '1.0-beta.3'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 6.
	self assert: (loadedPackages indexOf: 'Metacello-Core') > 0.
	self assert: (loadedPackages indexOf: 'Metacello-MC') >
						(loadedPackages indexOf: 'Metacello-Core').
	self assert: (loadedPackages indexOf: 'Metacello-Platform') >
						(loadedPackages indexOf: 'Metacello-Core').
	self assert: (loadedPackages indexOf: 'Metacello-TestsCore') >
						(loadedPackages indexOf: 'Metacello-Core').
	self assert: (loadedPackages indexOf: 'Metacello-Tutorial') >
						(loadedPackages indexOf: 'Metacello-Core').
	self assert: (loadedPackages indexOf: 'Metacello-TutorialTests') >
						(loadedPackages indexOf: 'Metacello-Tutorial').
