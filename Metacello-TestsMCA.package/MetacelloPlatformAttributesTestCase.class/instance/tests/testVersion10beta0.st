testVersion10beta0
	| project loadedPackages version loader |
	project := self project.

	version := project version: '1.0-beta.0'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'OB-SUnitGUI-dkh.52') >
						(loadedPackages indexOf: 'FFI-Tests-ar.3').
	self assert: (loadedPackages indexOf: 'GemTools-Client.experimental-dkh.493') >
						(loadedPackages indexOf: 'OB-SUnitGUI-dkh.52').
	self assert: (loadedPackages indexOf: 'GemTools-Platform.squeakCommon-dkh.2') >
						(loadedPackages indexOf: 'GemTools-Client.experimental-dkh.493').
