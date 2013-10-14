testBasicBaselineRegistration
    | registration projectSpec |
    projectSpec := self baselineProjectSpec.
    registration := projectSpec asProjectRegistration.
    self assert: registration isValid.
    self assert: registration = registration.
    self assert: registration hash = registration hash