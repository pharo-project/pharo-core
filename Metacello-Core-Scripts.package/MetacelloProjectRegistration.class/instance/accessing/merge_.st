merge: aProjectRegistration
  " ... merge is done when a spec has been loaded into the image"

  "only one of baselineProjectSpec or configurationProjectSpec should ever be set"

  self shouldBeMutable.
  (self isValid and: [ aProjectRegistration isValid ])
    ifFalse: [ self error: 'Invalid registrations' ].
  aProjectRegistration configurationProjectSpec
    ifNotNil: [ 
      "use aProjectRegistration's configurationProjectSpec and nil my baselineProjectSpec"
      configurationProjectSpec := aProjectRegistration configurationProjectSpec.
      baselineProjectSpec := nil.
      ^ self ].
  aProjectRegistration baselineProjectSpec
    ifNotNil: [ 
      "use aProjectRegistration's baselineProjectSpec and nil my configurationProjectSpec"
      configurationProjectSpec := nil.
      baselineProjectSpec := aProjectRegistration baselineProjectSpec ]