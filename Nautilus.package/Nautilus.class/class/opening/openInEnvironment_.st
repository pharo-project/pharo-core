openInEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		open.
	instance ui 
		useLastPackagePatternString;
		showHierarchy: self switchClassesAndPackages.
	^ instance