testBasicValidRegistration
  | registration projectSpec |
  registration := MetacelloProjectRegistration new.
  self deny: registration isValid.
  registration projectName: 'DiscGolf'.
  self deny: registration isValid.
  registration configurationProjectSpec: nil.
  registration baselineProjectSpec: self baselineProjectSpec.
  self assert: registration isValid.
  registration configurationProjectSpec: self configurationProjectSpec.
  registration baselineProjectSpec: nil.
  self assert: registration isValid