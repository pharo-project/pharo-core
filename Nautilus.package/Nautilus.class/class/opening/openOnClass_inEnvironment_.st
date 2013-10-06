openOnClass: aClass inEnvironment: anEnvironment

	| instance |
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		showInstance: aClass isMeta not;
	 	showGroups: false;
	 	package: aClass package class: aClass category: nil method: nil;
	 	open.
	 instance ui 
		showPackages: (self switchClassesAndPackages not);
		giveFocusToProtocol.
	^ instance