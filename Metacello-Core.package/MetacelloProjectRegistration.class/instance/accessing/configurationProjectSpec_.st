configurationProjectSpec: anObject
  "only one of baselineProjectSpec or configurationProjectSpec should ever be set"

  self shouldBeMutable.
  configurationProjectSpec := anObject