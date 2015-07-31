openOnClass: aClass inEnvironment: anEnvironment
	| instance |
	instance := self new.
	instance
		browsedEnvironment: anEnvironment;
		showInstance: aClass isMeta not;
		package: (self parentOfClass: aClass)
			class: aClass
			category: nil
			method: nil;
		open.
	instance ui
		useLastPackagePatternStringForClass: aClass;
		showHierarchy: self switchClassesAndPackages;
		giveFocusToProtocol.
	^ instance