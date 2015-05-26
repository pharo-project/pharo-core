registerProjectRegistration: aMetacelloProjectRegistration
    "unconditionally register <newRegistration> ... use with care"

    aMetacelloProjectRegistration configurationProjectSpec
        ifNotNil: [ :spec | 
            self configurationRegistry
                at: spec className
                ifPresent: [ :existing | 
                    (existing configurationProjectSpec registrationsCompareEqual: spec)
                        ifFalse: [ 
                            Transcript
                                cr;
                                show:
                                        'REGISTRATION OF INCOMPATABLE PROJECTS: ' , existing printString , ' REPLACED BY '
                                                , aMetacelloProjectRegistration printString ] ].
            spec immutable.
            self configurationRegistry at: spec className put: aMetacelloProjectRegistration ].
    aMetacelloProjectRegistration baselineProjectSpec
        ifNotNil: [ :spec | 
            self baselineRegistry
                at: spec className
                ifPresent: [ :existing | 
                    (existing baselineProjectSpec registrationsCompareEqual: spec)
                        ifFalse: [ 
                            Transcript
                                cr;
                                show:
                                        'REGISTRATION OF INCOMPATABLE PROJECTS: ' , existing printString , ' REPLACED BY '
                                                , aMetacelloProjectRegistration printString ] ].
            spec immutable.
            self baselineRegistry at: spec className put: aMetacelloProjectRegistration ].
    aMetacelloProjectRegistration immutable