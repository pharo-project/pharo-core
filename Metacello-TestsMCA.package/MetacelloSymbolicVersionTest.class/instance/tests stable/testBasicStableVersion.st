testBasicStableVersion

	| project version wc |
	project := self projectWith: #(#'platformVersion1.x').
	version := project version: #stable.
	version load.
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.25').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferFaux-tg.31'.