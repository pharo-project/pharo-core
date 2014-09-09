openInEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		open.
	instance ui 
		showHierarchy: self switchClassesAndPackages.
	^ instance