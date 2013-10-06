populateReasonCodeDescriptions

	| dict |
	dict := super populateReasonCodeDescriptions.
	"Warnings"
	dict at: #notDevelopmentVersion put: 'the symbolic version #development refers to a non-development literal version.'.
	dict at: #loadWarning put: 'Warning signalled during load [load validation].'.
	dict at: #stableDevelopmentVersion put: 'a version whose blessing is #development has been declared as a #stable version.'.
	"Critical Warnings"
	dict at: #loadDeprecation put: 'deprecation warning signalled while loading configuration [load validation].'.
	dict at: #noLoadableVersions put: 'no non #baseline versions defined in configuration.'.
	dict at: #noTests 		 put: 'no test cases defined in loaded configuration [load validation].'.
	dict at: #noVersionSpecified put: 'no version defined for the project reference or package. The version specified in the baseline or the latest version of the project or package in the repository will be used.'.
	dict at: #testDeprecation  put: 'deprecation warning signalled while running configuration tests [load validation].'.
	"Errors"
	dict at: #loadError put: 'error occured while loading configuration [load validation].'.
	dict at: #testFailures put: 'test failures while running tests [load validation].'.
	^dict