testVersion011Pharo10Beta
	| project loadedPackages version loader |
	project := self projectWith: #(#'pharo1.0Beta').

	version := project version: '0.11'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'FFI-Kernel-ar.11') > 0.
	self assert: (loadedPackages indexOf: 'FFI-Examples-ar.1') >
						(loadedPackages indexOf: 'FFI-Kernel-ar.11').
	self assert: (loadedPackages indexOf: 'FFI-Tests-ar.3') >
						(loadedPackages indexOf: 'FFI-Examples-ar.1').
