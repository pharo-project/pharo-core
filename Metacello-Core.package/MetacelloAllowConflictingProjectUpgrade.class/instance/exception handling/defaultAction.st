defaultAction
    ^ MetacelloConflictingProjectError
        signal:
            'Load Conflict between existing ' , self existingProjectRegistration printString , ' and '
                , self newProjectRegistration printString