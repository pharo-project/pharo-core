settings
checkChangesFileAvailability
	^ CheckChangesFileAvailability ifNil: [CheckChangesFileAvailability := true]