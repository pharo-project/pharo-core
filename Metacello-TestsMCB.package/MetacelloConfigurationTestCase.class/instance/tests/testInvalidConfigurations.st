testInvalidConfigurations
    | project repo issues validationError x |
    repo := MetacelloScriptingResource current configurationRepository.
    Gofer new
        repository: repo;
        package: 'ConfigurationOfInvalidConfigurations';
        load.
    project := (Smalltalk at: #'ConfigurationOfInvalidConfigurations') project.
    issues := MetacelloToolBox validateProject: project version: '1.0.0'.
    self assert: issues size == 1.
    validationError := issues at: 1.
    self assert: (validationError isKindOf: MetacelloValidationError).
    self assert: validationError reasonCode == #'incompleteProjectSpec'.
    self assert: validationError callSite == #'validateBaselineVersionSpec:'.
    issues := MetacelloToolBox validateProject: project version: '2.0.0'.
    self assert: issues size == 3.
    self
        assert:
            (x := issues collect: [ :each | each class ]) asArray
                =
                    {MetacelloValidationCriticalWarning.
                    MetacelloValidationError.
                    MetacelloValidationCriticalWarning}.
    self
        assert:
            (x := issues collect: [ :each | each reasonCode ]) asArray
                = #(#'noVersionSpecified' #'cannotResolveVersion' #'missingRecommendedProjectSpecField').
    self
        assert:
            (x := issues collect: [ :each | each callSite ]) asArray
                = #(#'validateVersionSpec:' #'validateVersionSpec:' #'validateBaselineVersionSpec:').
    issues := MetacelloToolBox validateProject: project version: '3.0.0'.
    self assert: issues size == 1.
    validationError := issues at: 1.
    self assert: (validationError isKindOf: MetacelloValidationError).
    self assert: validationError reasonCode == #'incompleteProjectSpec'.
    self assert: validationError callSite == #'validateBaselineVersionSpec:'.
