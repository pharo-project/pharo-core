openInEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		open.
	instance ui 
		showPackages: (self switchClassesAndPackages not).
	^ instance