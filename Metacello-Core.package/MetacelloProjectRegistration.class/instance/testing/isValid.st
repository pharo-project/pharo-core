isValid
  " has a name and one or the other of the projectSpecs is non-nil"

  "only one of baselineProjectSpec or configurationProjectSpec should ever be set"

  projectName ifNil: [ ^ false ].
  ^ (configurationProjectSpec notNil and: [ baselineProjectSpec isNil ])
    or: [ baselineProjectSpec notNil and: [ configurationProjectSpec isNil ] ]