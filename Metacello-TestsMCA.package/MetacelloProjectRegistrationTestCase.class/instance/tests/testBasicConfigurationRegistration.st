testBasicConfigurationRegistration
    | registration projectSpec |
    projectSpec := self configurationProjectSpec.
    registration := projectSpec asProjectRegistration.
    self assert: registration isValid.
    self assert: registration = registration.
    self assert: registration hash = registration hash