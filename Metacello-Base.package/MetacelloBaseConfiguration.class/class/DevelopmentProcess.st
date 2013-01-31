development support
DevelopmentProcess

"DEVELOPMENT Process
	- load current version:
	  	(self project version: #stable) load: 'ALL'.
	- open new version for development:
		self createNewDevelopmentVersion
	- do development and periodically save mcz files and configuration until ready for release
		self saveModifiedPackagesAndConfiguration: '- fixed a bug'
	- update the the development version to match mcz file versions
		self updateToLatestPackageVersions: '- fixed a bug'
	- save configuration
		self saveConfiguration: '- checkpoint configuration'
RELEASE Process
	- mark development version as release:
		self releaseDevelopmentVersion: '- release'
"
	<apiDocumentation>
