development support
goferBranch: branchName project: commitMessage

	| pkgSpec |
	(pkgSpec := self projectPackage) == nil ifTrue: [ ^false ].
	pkgSpec file: pkgSpec name, '.', branchName.
	^pkgSpec goferBranchPackage: branchName message: commitMessage