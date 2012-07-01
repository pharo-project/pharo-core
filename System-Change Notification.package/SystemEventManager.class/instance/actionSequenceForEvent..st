events-accessing
actionSequenceForEvent: anEventSelector

    ^(self actionMap
        at: anEventSelector asSymbol
        ifAbsent: [^WeakActionSequenceTrappingErrors new])
            asActionSequenceTrappingErrors