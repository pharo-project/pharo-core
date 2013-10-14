testBaseline10beta0

	| project loadedPackages version loader |
	project := self project.

	version := project version: '1.0-beta.0-baseline'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'Metacello-Core') > 0.
	self assert: (loadedPackages indexOf: 'Metacello-MC') >
						(loadedPackages indexOf: 'Metacello-Core').
	self assert: (loadedPackages indexOf: 'Metacello-Platform') >
						(loadedPackages indexOf: 'Metacello-Core').
