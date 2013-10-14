baselineNamed: baseName
  | baselineName |
  "Check if the class does not exist"
  baselineName := self baselineNameFrom: baseName.
  (Smalltalk includesKey: baselineName asSymbol)
    ifFalse: [ 
      "Create the configuration class"
      self ensureMetacello.
      BaselineOf
        subclass: baselineName
        instVarNames: #()
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        category: baselineName.
      PackageInfo registerPackageName: baselineName ].
  project := (MetacelloPlatform current globalNamed: baselineName asSymbol)
    project