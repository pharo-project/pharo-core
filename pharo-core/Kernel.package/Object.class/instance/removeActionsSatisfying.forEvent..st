events-removing
removeActionsSatisfying: aOneArgBlock 
forEvent: anEventSelector

    self
        setActionSequence:
            ((self actionSequenceForEvent: anEventSelector)
                reject: [:anAction | aOneArgBlock value: anAction])
        forEvent: anEventSelector