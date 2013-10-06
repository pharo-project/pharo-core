updateableActionMap

    actionMap == nil
        ifTrue: [actionMap := self createActionMap].
    ^actionMap