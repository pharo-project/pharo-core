opening
openInEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance browsedEnvironment: anEnvironment.
	instance open.
	^ instance