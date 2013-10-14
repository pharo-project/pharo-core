handleExpectedValidationFailure: aBlock reasonCode: reasonCode
    | issues validationError |
    issues := #().
    aBlock
        on: MetacelloValidationFailure
        do: [ :ex | issues := ex issues ].
    self assert: issues size == 1.
    validationError := issues at: 1.
    self assert: validationError reasonCode == reasonCode.
    self assert: validationError callSite == #'validateForScriptLoad:withDefaultVersionString:withDefaultRepositoryDecription:'