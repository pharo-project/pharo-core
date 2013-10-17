asProjectRegistration
    (self className beginsWith: 'BaselineOf')
        ifTrue: [ ^ MetacelloProjectRegistration fromMCBaselineProjectSpec: self ].
    ^ MetacelloProjectRegistration fromMCConfigurationProjectSpec: self