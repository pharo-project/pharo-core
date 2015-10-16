resumeSystemSettings
	"If this image is executed for the first time, the settings are updated from the disk"
	alreadyResumed ifNil: [ 
		alreadyResumed := true.
		self updateSettingNodes ]