openOnMethod: aMethod inEnvironment: anEnvironment

	| instance class |
	class := aMethod methodClass.
	instance := self new.
	instance 
		browsedEnvironment: anEnvironment;
		showInstance: class isMeta not;
		showGroups: false;
		package: (self parentOfClass: class) 
			class: class 
			category: aMethod protocol asString 
			method: aMethod;
		open.
		
	 instance ui 
		showPackages: (self switchClassesAndPackages not);
		giveFocusToMethod.
	^ instance