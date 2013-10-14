testIssue81B
	"http://code.google.com/p/metacello/issues/detail?id=81
	 Note: for this bug to express itself, the dependent mcz version numbers (in this case 35) must be 
	 greater than the umbrella mcz file version number (in this case 5)"
	
	| project version wc |
	loadType := #linear.
	project := self project.
	version := project version: '5.0-baseline'.
	version load.
	wc := (GoferPackageReference name: 'GoferUmbrella') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferUmbrella-lr.5').
	wc := (GoferPackageReference name: 'GoferBarDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBarDependency-lr.35').
	wc := (GoferPackageReference name: 'GoferFooDependency') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFooDependency-lr.35').
