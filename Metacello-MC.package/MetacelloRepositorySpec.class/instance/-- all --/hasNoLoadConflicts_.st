hasNoLoadConflicts: aMetacelloProjectSpec
  self description = aMetacelloProjectSpec description
    ifTrue: [ ^ true ].
  self type = 'github'
    ifTrue: [ 
      ^ self createRepository
        hasNoLoadConflicts: aMetacelloProjectSpec createRepository ].
  ^ false