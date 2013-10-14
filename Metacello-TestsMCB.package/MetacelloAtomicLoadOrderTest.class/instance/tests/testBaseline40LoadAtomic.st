testBaseline40LoadAtomic

	| project version wc |
	project := self project.
	version := project version: '4.0-baseline'.
	version load.
	wc := (GoferPackageReference name: 'GoferUmbrella') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferUmbrella-lr.5').
	wc := (GoferPackageReference name: 'GoferBarDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBarDependency-lr.35').
	wc := (GoferPackageReference name: 'GoferFooDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFooDependency-lr.35').
