baselineNamed: baseName
  | baselineName |
  "Check if the class does not exist"
  baselineName := self baselineNameFrom: baseName.
  (Smalltalk globals includesKey: baselineName asSymbol)
    ifFalse: [ 
      "Create the configuration class"
      self ensureMetacello.
      BaselineOf
        subclass: baselineName
        instanceVariableNames: #()
        classVariableNames: #()
        poolDictionaries: #()
        category: baselineName.
      RPackageOrganizer default registerPackageNamed: baselineName ].
  project := (MetacelloPlatform current globalNamed: baselineName asSymbol) project