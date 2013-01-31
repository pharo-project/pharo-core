as yet unclassified
runPackages
	| packages |
	packages := self packages.
	self inform: 'Running tests in ', packages size asString, ' Packages'.
	HDTestReport runPackages: self packages.
	self exitSuccess.