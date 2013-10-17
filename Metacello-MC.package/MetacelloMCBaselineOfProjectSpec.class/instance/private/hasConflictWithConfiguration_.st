hasConflictWithConfiguration: aConfigurationProjectSpec
  self name = aConfigurationProjectSpec name
    ifFalse: [ ^ true ].
  self project configuration className
    = aConfigurationProjectSpec project configuration className
    ifFalse: [ ^ true ].
  ^ ((self repositories isEmpty
    or: [ aConfigurationProjectSpec repositories isEmpty ])
    or: [ self repositories hasNoLoadConflicts: aConfigurationProjectSpec repositories ])
    not