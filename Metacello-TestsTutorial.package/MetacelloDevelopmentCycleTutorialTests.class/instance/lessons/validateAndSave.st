validateAndSave

	| wc |
	MetacelloToolBox validateConfiguration: (Smalltalk at: self configurationName).
	PackageInfo registerPackageName: self configurationName asString.
	"register workingCopy for gofer to use"
	wc := MCWorkingCopy forPackage: (MetacelloTestsMCPackage new name: self configurationName asString).
	(wc repositoryGroup respondsTo: #disableCache)
		ifTrue: [wc repositoryGroup perform: #disableCache].
	Gofer new
		disablePackageCache;
		repository: (Smalltalk at: self repositoryName);
		package: self configurationName asString;
		commit: 'Initial configuration'.
	"fix it so that the directory repository is used for subsequent saves"
	wc := (Smalltalk at: self configurationName) project projectPackage workingCopy.
	wc repositoryGroup addRepository: (Smalltalk at: self repositoryName).
	MetacelloToolBox saveConfigurationPackageFor: self configurationName asString description: 'commit message'.
