compareVersions
	"Compare previous version to development version"

	"self compareVersions"

	"Note: you need 1.0-beta.28 or later for the class MetacelloToolBox"

	self ensureMetacello.
	((Smalltalk at: #MetacelloToolBox) compareVersionsIn: self) inspect
