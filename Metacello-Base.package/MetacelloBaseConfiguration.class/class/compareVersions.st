development support
compareVersions
	"Compare the #stable version to #development version"

	"self compareVersions"

	<apiDocumentation>
	self ensureMetacello.
	((Smalltalk at: #MetacelloToolBox) compareVersionsIn: self) inspect
