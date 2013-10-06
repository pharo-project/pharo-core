copySystemToVm

	(self class instVarNames includes: 'systemPathName') ifTrue: [
		vmPathName := self instVarNamed: 'systemPathName'.
	].

