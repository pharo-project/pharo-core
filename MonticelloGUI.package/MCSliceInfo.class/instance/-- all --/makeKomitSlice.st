makeKomitSlice
	| name issue workingCopy |
	issue := self usableIssueNumber.
	issue isEmptyOrNil ifTrue: [ ^ nil ].
	name := self usableIssueSummary.
	name isEmptyOrNil ifTrue: [ ^ nil ].
	name := 'SLICE-Issue-' , issue asString , '-' , name.
	RPackageOrganizer default registerPackageNamed: name.
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: name).
	self includedPackages
		do: [:required | workingCopy requirePackage: required ].
	^ workingCopy