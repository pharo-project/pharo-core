testSymbolicUnlock
  | projectSpec |
  Metacello new
    configuration: 'ExternalX';
    version: #'stable';
    lock.
  self
    assert:
      (Metacello image
        configuration: 'ExternalX';
        list) isEmpty.
  projectSpec := Metacello registry
    configuration: 'ExternalX';
    list.
  self assert: projectSpec registration locked.
  Metacello registry
    configuration: 'ExternalX';
    unlock.
  projectSpec := Metacello registry
    configuration: 'ExternalX';
    list.
  self deny: projectSpec registration locked