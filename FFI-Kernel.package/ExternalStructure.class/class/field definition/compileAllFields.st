compileAllFields
	"ExternalStructure compileAllFields"
	self withAllSubclassesDo:[:cls|
		cls compileFields.
	].