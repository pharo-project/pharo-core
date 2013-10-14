testIssue81A
	"http://code.google.com/p/metacello/issues/detail?id=81
	 Verify that the old version of umbrella file loads in as expected"
	
	| project version wc |
	loadType := #linear.
	project := self project.
	version := project version: '5.0-baseline'.
	version load: 'UmbrellaA'.
	wc := (GoferPackageReference name: 'GoferUmbrella') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferUmbrella-dkh.4').
	wc := (GoferPackageReference name: 'GoferBarDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBarDependency-lr.30').
	wc := (GoferPackageReference name: 'GoferFooDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFooDependency-lr.30').
