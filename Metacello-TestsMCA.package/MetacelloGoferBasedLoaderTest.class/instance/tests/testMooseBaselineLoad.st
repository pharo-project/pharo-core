testMooseBaselineLoad

	| project version wc test |
	project := self project.
	version := project version: '1.0-Moose'.
	version load.
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFaux-tg.35').
