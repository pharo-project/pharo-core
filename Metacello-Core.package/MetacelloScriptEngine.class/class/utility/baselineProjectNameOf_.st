baselineProjectNameOf: baselineClassName
  ^ (baselineClassName beginsWith: 'BaselineOf')
    ifTrue: [ baselineClassName copyFrom: 'BaselineOf' size + 1 to: baselineClassName size ]
    ifFalse: [ baselineClassName ]