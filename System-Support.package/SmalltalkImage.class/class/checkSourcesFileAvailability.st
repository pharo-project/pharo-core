settings
checkSourcesFileAvailability
	^ CheckSourcesFileAvailability ifNil: [CheckSourcesFileAvailability := true]