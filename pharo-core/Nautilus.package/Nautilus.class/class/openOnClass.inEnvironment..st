opening
openOnClass: aClass inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showInstance: aClass isMeta not.
	instance showGroups: false.
	instance package: aClass package class: aClass category: nil method: nil.
	instance open.
	instance ui showPackages: (self switchClassesAndPackages not).
	^ instance