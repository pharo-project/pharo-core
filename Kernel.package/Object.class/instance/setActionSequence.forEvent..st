events-accessing
setActionSequence: actionSequence
forEvent: anEventSelector

    | action |
    action := actionSequence asMinimalRepresentation.
    action == nil
        ifTrue:
            [self removeActionsForEvent: anEventSelector]
        ifFalse:
            [self updateableActionMap
                at: anEventSelector asSymbol
                put: action]