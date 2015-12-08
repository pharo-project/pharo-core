currentVersionString
  ^ self configurationProjectSpec
    ifNotNilDo: [ :aSpec | aSpec versionString ]
    ifNil: [ baselineProjectSpec repositoryVersionString ]