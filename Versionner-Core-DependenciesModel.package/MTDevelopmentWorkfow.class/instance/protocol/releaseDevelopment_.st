releaseDevelopment: newDevVersionString
	"Release the development baseline (will give a version method) and prepare the next development baseline."

	| devVersionString versionName |
	devVersionString := self developmentVersion versionString.
	versionName :=  self developmentVersionNumber: devVersionString.
	MetacelloToolBox
		createVersion: versionName
		for: project name
		from: devVersionString 
		description: 'version ' , versionName.
	self setStableBlessingFor: versionName.
	MetacelloToolBox 
		stableVersion: versionName 
		for: project name
		platformAttribute: #common. 
	"keep the development version pointing to the baseline, and ..."	
	self
		developmentVersion: devVersionString
		platformAttribute: #common.
	" ... create the new dev version"
	self createNextDevelopment: newDevVersionString.
	self notifyConfigurationModified.