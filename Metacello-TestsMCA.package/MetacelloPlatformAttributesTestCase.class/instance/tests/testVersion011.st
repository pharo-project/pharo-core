testVersion011
	| project loadedPackages version loader |
	project := self project.

	version := project version: '0.11'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'FFI-Kernel-ar.8') > 0.
	self assert: (loadedPackages indexOf: 'FFI-Examples-ar.1') >
						(loadedPackages indexOf: 'FFI-Kernel-ar.8').
	self assert: (loadedPackages indexOf: 'FFI-Tests-ar.2') >
						(loadedPackages indexOf: 'FFI-Examples-ar.1').
