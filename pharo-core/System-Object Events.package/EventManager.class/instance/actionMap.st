accessing
actionMap

    ^actionMap == nil
        ifTrue: [self createActionMap]
        ifFalse: [actionMap]