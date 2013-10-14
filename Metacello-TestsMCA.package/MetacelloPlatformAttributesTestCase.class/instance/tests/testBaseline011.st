testBaseline011
	| project loadedPackages version loader |
	project := self project.

	version := project version: '0.11-baseline'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'FFI-Kernel') > 0.
	self assert: (loadedPackages indexOf: 'FFI-Examples') >
						(loadedPackages indexOf: 'FFI-Kernel').
	self assert: (loadedPackages indexOf: 'FFI-Tests') >
						(loadedPackages indexOf: 'FFI-Examples').
