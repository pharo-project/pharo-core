development support
createNewBaselineVersion
	"Create a new baseline version based upon the #stable version's baseline.
	 A new baseline should be created if new packages have been added or package dependencies have changed."

	"self createNewDevelopmentVersion"

	<apiDocumentation>
	self ensureMetacello.
	(Smalltalk at: #MetacelloToolBox) createNewBaselineVersionIn: self description: ''
