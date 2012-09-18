opening
openOnPackage: aPackage inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showGroups: false.
	instance selectedPackage: aPackage.
	instance open.
	instance ui showPackages: true.
	^ instance