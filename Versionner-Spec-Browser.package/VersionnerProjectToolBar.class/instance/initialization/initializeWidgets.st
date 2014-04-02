initializeWidgets
	updateButton := (self instantiate: ButtonModel)
		label: ' Save to development';
		icon: (Smalltalk ui icons iconNamed: #smallSaveIcon);
		help: 'Save the current modifications into the development baseline.';
		yourself.

	releaseButton := (self instantiate: ButtonModel)
		label: ' Release version';
		icon: (Smalltalk ui icons iconNamed: #smallPublishIcon);
		help: 'Make a release. It will create a version method for this release and a new development baseline.';
		enabled: false;
		yourself.
	
	commitButton := (self instantiate: ButtonModel)
		label: ' Commit the project';
		icon: (Smalltalk ui icons iconNamed: #monticelloPackageIcon);
		help: 'Commit the configuration and all dirty packages of the project to the main repository';
		yourself.
