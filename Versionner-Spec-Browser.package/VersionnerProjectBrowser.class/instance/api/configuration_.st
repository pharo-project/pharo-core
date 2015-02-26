configuration: aMBConfigurationInfo 
	configuration := aMBConfigurationInfo.
	configuration recalculateSilently.
	self versionList: configuration versions.