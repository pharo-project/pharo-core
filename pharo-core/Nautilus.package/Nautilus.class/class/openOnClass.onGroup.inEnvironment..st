opening
openOnClass: aClass onGroup: aGroup inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance showInstance: aClass isMeta not.
	instance showGroups: true.
	instance selectedGroup: aGroup.
	instance package: aClass package class: aClass category: nil method: nil.
	instance open.
	^ instance