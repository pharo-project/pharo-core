lock
    "lock projects in registry"

    self addStatement: #'lock' args: #().
    ^ self execute