hasLoadConflicts: aProjectRegistration
  "5 combinations of loads with no load conflicts:
        No configs and baselines =
        configs = and no baselines
        configs = and baselines =
        configs = and no baseline loaded (self) with a baseline to load (aProjectRegistration)
        config loaded (self), no config to load (aProjectRegistration) and no baseline loaded(self) with a baseline to load (aProjectRegistration) "

  self isValid
    ifFalse: [ self error: 'Invalid projectRegistration: ' , self printString ].
  aProjectRegistration isValid
    ifFalse: [ self error: 'Invalid projectRegistration: ' , aProjectRegistration printString ].
  configurationProjectSpec
    ifNil: [ 
      aProjectRegistration configurationProjectSpec notNil
        ifTrue: [ 
          ^ baselineProjectSpec
            hasConflictWithConfiguration:
              aProjectRegistration configurationProjectSpec ] ]
    ifNotNil: [ 
      aProjectRegistration configurationProjectSpec
        ifNotNil: [ 
          (aProjectRegistration configurationProjectSpec
            hasLoadConflicts: configurationProjectSpec)
            ifTrue: [ ^ true ] ] ].
  ^ baselineProjectSpec
    ifNil: [ 
      ^ configurationProjectSpec
        hasConflictWithBaseline: aProjectRegistration baselineProjectSpec ]
    ifNotNil: [ baselineProjectSpec hasLoadConflicts: aProjectRegistration baselineProjectSpec ]