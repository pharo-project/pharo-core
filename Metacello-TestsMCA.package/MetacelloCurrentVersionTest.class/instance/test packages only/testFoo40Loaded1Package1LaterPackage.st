testFoo40Loaded1Package1LaterPackage
  | version cv fum projectFie projectFee foo feaux |
  gofer
    package: 'MetacelloTestConfigurationOfFum';
    package: 'MetacelloTestConfigurationOfFoo';
    package: 'MetacelloTestConfigurationOfFeaux';
    package: 'MetacelloTestConfigurationOfProjectFie';
    package: 'MetacelloTestConfigurationOfProjectFee';
    load.
  fum := (Smalltalk at: #'MetacelloTestConfigurationOfFum') new project.
  foo := (Smalltalk at: #'MetacelloTestConfigurationOfFoo') new project.
  feaux := (Smalltalk at: #'MetacelloTestConfigurationOfFeaux') new project.
  projectFie := (Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') new
    project.
  projectFee := (Smalltalk at: #'MetacelloTestConfigurationOfProjectFee') new
    project.
  version := foo version: '4.0'.
  version load: #('GoferFaux' 'GoferBar').
  gofer
    version: 'GoferFaux-tg.34';
    load.
  self
    assertProject: foo
    expectedVersionString: '5.0'
    expectedFidelity: #'loadedToSpec'.
  self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
  self
    assertProject: projectFie
    expectedVersionString: '4.0'
    expectedFidelity: #'loadedMatchConstraints'.
  self
    assertProject: projectFee
    expectedVersionString: nil
    expectedFidelity: nil.
  self
    assertProject: fum
    expectedVersionString: '4.0'
    expectedFidelity: #'loadedMatchConstraints'