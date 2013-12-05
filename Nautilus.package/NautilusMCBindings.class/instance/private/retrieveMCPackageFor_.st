retrieveMCPackageFor: aRPackage
	| name mcPackages |
	mcPackages := MCWorkingCopy allManagers.
	name := aRPackage name.
	[ name isEmpty ]
		whileFalse: [ 
			mcPackages
				detect: [ :mc | mc package name = name ]
				ifFound: [ :mcPackage | ^ mcPackage package ]
				ifNone: [ name := (name subStrings: '-') allButLast joinUsing: '-' ] ].
	^ nil