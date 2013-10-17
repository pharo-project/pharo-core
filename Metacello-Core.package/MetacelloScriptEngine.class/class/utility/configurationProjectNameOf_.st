configurationProjectNameOf: configurationClassName
  ^ (configurationClassName beginsWith: 'ConfigurationOf')
    ifTrue: [ 
      configurationClassName
        copyFrom: 'ConfigurationOf' size + 1
        to: configurationClassName size ]
    ifFalse: [ configurationClassName ]