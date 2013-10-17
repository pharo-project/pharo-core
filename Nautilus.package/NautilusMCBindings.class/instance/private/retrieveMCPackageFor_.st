retrieveMCPackageFor: aRPackage
	| name mcPackages |

	mcPackages := MCWorkingCopy allManagers.
	name := aRPackage name.
	[ name isEmpty ]
		whileFalse: [| package |
			package := (mcPackages detect: [ :mc | mc package name = name ] ifNone: [ nil ]).
			package
				ifNil: [ name := (name subStrings: '-') allButLast joinUsing: '-' ]
				ifNotNil: [ ^ package package ]].
	^ nil