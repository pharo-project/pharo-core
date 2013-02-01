as yet unclassified
runPackages
	| packages |
	packages := self packages.
	self inform: 'Running tests in ', packages size asString, ' Packages'.
	self testRunner runPackages: self packages.
	self exitSuccess.