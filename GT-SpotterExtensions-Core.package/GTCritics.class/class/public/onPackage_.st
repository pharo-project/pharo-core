onPackage: anRPackage
	^ self new 
		title: anRPackage packageName;
		environment: (self cache package: anRPackage);
		yourself