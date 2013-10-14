testReasonCodes

	self assert: (MetacelloToolBox descriptionForValidationReasonCode: #noVersionSpecified) = 'no version defined for the project reference or package. The version specified in the baseline or the latest version of the project or package in the repository will be used.'.
	self assert: (MetacelloToolBox descriptionForValidationReasonCode: #duplicateNames) = 'multiple independent definitions for an entity with same name (project, package, or group).'.
