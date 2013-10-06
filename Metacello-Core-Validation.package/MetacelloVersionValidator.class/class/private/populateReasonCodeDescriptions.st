populateReasonCodeDescriptions

	| dict |
	dict := Dictionary new.
	"Warnings"
	dict at: #onlyBaselineVersion put: 'one or more baseline versions have been defined, but no non-baseline versions are defined.'.
	"Critical Warnings"
	dict at: #duplicateVersionDefinitions put: 'there are multiple pragma methods specifying the same version.'.
	dict at: #packageNameMismatch put: 'the name in the packageSpec does not match the name of the mcz file.'.
	dict at: #projectClassNameFileMismatch put: 'the class name of the configuration does not match the mcz file containing the configuration.'.
	"Errors"
	dict at: #cannotResolveVersion put: 'the version (project reference or symbolic version) was not found in the specified configuration.'.
	dict at: #duplicateNames put: 'multiple independent definitions for an entity with same name (project, package, or group).'.
	dict at: #incompleteProjectSpec put: 'missing required fields in project reference (className and/or repository).'.
	dict at: #incorrectVersionString put: 'the version declared in pragma doesn''t match version in versionSpec.'.
	dict at: #invalidDoItSelector put: 'doit select must be a Symbol.'.
	dict at: #invalidVersionString put: 'versionString must be a String.'.
	dict at: #missingVersionImport put: 'version specified in import pragma not defined in configuration.'.
	dict at: #noVersionsDefined put: 'no usable baseline or version defined in configuration ... configuration cannot be loaded.'.
	dict at: #projectCreationError put: 'error occured while resolving project reference.'.
	dict at: #shadowedNames put: 'name duplication between packages and projects.'.
	dict at: #versionCompositionError put: 'error while creating versionSpec from pragmas.'.
	^dict