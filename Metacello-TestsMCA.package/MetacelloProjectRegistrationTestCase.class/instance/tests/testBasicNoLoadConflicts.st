testBasicNoLoadConflicts
  "5 combinations of loads with no load conflicts:
        No configs and baselines =
        configs = and no baselines
        configs = and baselines =
        configs = and no baseline   loaded with a baseline to load
        config loaded, no config to load and no baseline loaded with a baseline to load "

  | registrationA registrationB baselineProjectSpecA configurationProjectSpecA baselineProjectSpecB configurationProjectSpecB |
  baselineProjectSpecA := self baselineProjectSpec.
  configurationProjectSpecA := self configurationProjectSpec.
  baselineProjectSpecB := self baselineProjectSpec name: 'NotDiscGolf'.
  configurationProjectSpecB := self configurationProjectSpec name: 'NotDiscGolf'.
  registrationA := MetacelloProjectRegistration new.
  registrationB := MetacelloProjectRegistration new.
  registrationA projectName: baselineProjectSpecA name.
  registrationB projectName: baselineProjectSpecA name.
  registrationA configurationProjectSpec: nil.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  registrationB configurationProjectSpec: nil.
  registrationB baselineProjectSpec: baselineProjectSpecA.
  self deny: (registrationA hasLoadConflicts: registrationB).
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: nil.
  registrationB configurationProjectSpec: configurationProjectSpecA.
  registrationB baselineProjectSpec: nil.
  self deny: (registrationA hasLoadConflicts: registrationB).
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationA isValid.
  registrationB configurationProjectSpec: configurationProjectSpecA.
  registrationB baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationB isValid.
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: nil.
  self assert: registrationA isValid.
  registrationB configurationProjectSpec: configurationProjectSpecA.
  registrationB baselineProjectSpec: baselineProjectSpecA.
  self deny: registrationB isValid.
  registrationA configurationProjectSpec: configurationProjectSpecA.
  registrationA baselineProjectSpec: nil.
  registrationB configurationProjectSpec: nil.
  registrationB baselineProjectSpec: baselineProjectSpecA.
  self deny: (registrationA hasLoadConflicts: registrationB)