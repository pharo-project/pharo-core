baselineProjectSpec: anObject
  "only one of baselineProjectSpec or configurationProjectSpec should ever be set"

  self shouldBeMutable.
  baselineProjectSpec := anObject