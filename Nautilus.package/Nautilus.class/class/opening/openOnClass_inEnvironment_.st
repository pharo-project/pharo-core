openOnClass: aClass inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		showInstance: aClass isMeta not;
	 	showGroups: false;
	 	package: (self parentOfClass: aClass) 
			class: aClass 
			category: nil 
			method: nil;
	 	open.
	 instance ui 
		showHierarchy: self switchClassesAndPackages;
		giveFocusToProtocol.
	^ instance