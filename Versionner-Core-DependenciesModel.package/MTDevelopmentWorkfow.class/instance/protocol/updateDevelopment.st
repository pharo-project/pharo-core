updateDevelopment
	"Update development baseline with information present in the project."

	| baseline versionString |
	versionString := self developmentVersion versionString.
	baseline := MetacelloToolBox compiledMethodForVersion: self developmentVersion.
	baseline methodClass class removeSelector: baseline selector.
	self createBaseline: versionString.
	self notifyConfigurationModified.