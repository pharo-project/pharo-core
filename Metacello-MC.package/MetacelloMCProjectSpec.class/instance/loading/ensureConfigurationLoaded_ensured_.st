ensureConfigurationLoaded: vrsn ensured: ensured
  "answer true if the configuration should be reloaded"

  vrsn blessing == #'development'
    ifTrue: [ 
      ensured ~~ #'latest'
        ifTrue: [ ^ MetacelloScriptEnsureProjectLoadedForDevelopment signal ] ].
  ^ false