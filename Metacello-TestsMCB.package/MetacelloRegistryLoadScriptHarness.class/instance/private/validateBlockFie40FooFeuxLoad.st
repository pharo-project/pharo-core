validateBlockFie40FooFeuxLoad
  ^ [ 
  self verify: 'GoferFoo' version: 'GoferFoo-lr.1'.
  self verify: 'GoferBar' version: 'GoferBar-lr.1'.
  self verify: 'GoferFaux' version: 'GoferFaux-tg.32'.
  self verify: 'GoferBeau' version: 'GoferBeau-dkh.55'.
  self verify: 'GeauxFoo' version: 'GeauxFoo-lr.1'.
  self verify: 'GeauxBar' version: 'GeauxBar.branch-lr.2'.
  self
    validateProjects:
      {{'MetacelloTestConfigurationOfProjectFie'.
      '4.0'.
      'dictionary://Metacello_Configuration_Test_Repository'.
      nil.
      nil.
      nil}.
      {'MetacelloTestConfigurationOfFoo'.
      '4.0'.
      'dictionary://Metacello_Configuration_Test_Repository'.
      nil.
      nil.
      nil}.
      {'MetacelloTestConfigurationOfFeaux'.
      '4.0'.
      'dictionary://Metacello_Configuration_Test_Repository'.
      nil.
      nil.
      nil}} ]