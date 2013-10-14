testBasicHasLoadConflicts
  | registrationA registrationB baselineProjectSpecA configurationProjectSpecA baselineProjectSpecB configurationProjectSpecB |
  baselineProjectSpecA := self baselineProjectSpec.
  configurationProjectSpecA := self configurationProjectSpec.
  baselineProjectSpecB := self baselineProjectSpec
    className: 'BaselineOfNotDiscGolf'.
  configurationProjectSpecB := self configurationProjectSpec
    className: 'ConfigurationOfNotDiscGolf'.
  registrationA := MetacelloProjectRegistration new.
  registrationB := MetacelloProjectRegistration new.
  self should: [ registrationA hasLoadConflicts: registrationB ] raise: Error.
  registrationA projectName: baselineProjectSpecA name.
  registrationB projectName: baselineProjectSpecA name.
  self should: [ registrationA hasLoadConflicts: registrationB ] raise: Error.
  registrationA configurationProjectSpec: nil.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  registrationB configurationProjectSpec: nil.
  registrationB baselineProjectSpec: baselineProjectSpecB.
  self assert: (registrationA hasLoadConflicts: registrationB).
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationA isValid.
  registrationB configurationProjectSpec: configurationProjectSpecB.
  registrationB baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationB isValid.
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationA isValid.
  registrationB configurationProjectSpec: configurationProjectSpecA.
  registrationB baselineProjectSpec: baselineProjectSpecB.
  self deny: registrationB isValid.
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: nil.
  registrationB configurationProjectSpec: configurationProjectSpecB.
  registrationB baselineProjectSpec: nil.
  self assert: (registrationA hasLoadConflicts: registrationB).
  registrationA configurationProjectSpec: nil.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  registrationB configurationProjectSpec: configurationProjectSpecA.
  registrationB baselineProjectSpec: nil.
  self assert: (registrationA hasLoadConflicts: registrationB)