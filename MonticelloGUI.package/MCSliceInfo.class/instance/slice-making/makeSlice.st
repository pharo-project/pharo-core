makeSlice
	| name issue workingCopy package |
	issue := self usableIssueNumber.
	issue isEmptyOrNil ifTrue: [ ^ nil ].
	name := self usableIssueSummary.
	name isEmptyOrNil ifTrue: [ ^ nil ].
	name := 'SLICE-Issue-', issue asString, '-', name.
	package := RPackageOrganizer default registerPackageNamed: name.
	workingCopy := package mcWorkingCopy.
	self includedPackages
		do: [:required | workingCopy requirePackage: required package].
	^ workingCopy