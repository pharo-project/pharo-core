validateConfiguration: rgstry
  | spec |
  spec := self validateRegistrations: rgstry.
  self assert: spec == spec asConfigurationProjectSpec