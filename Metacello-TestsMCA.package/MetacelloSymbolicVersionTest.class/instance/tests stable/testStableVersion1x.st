testStableVersion1x

	| project version wc |
	MetacelloConfigurationResource projectAttributes: #(#'platformVersion1.x').
	project := self project.
	version := project version: '2.0'.
	version load.
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferFaux-tg.30'