testNestedLoad3
    MetacelloConfigurationResource projectAttributes: #(#'level1_1' #'level2_2' #'level2_1' #'level3_2').
    Metacello new
        project: 'ToolBox';
        className: 'MetacelloTestConfigurationOfProjectToolBox';
        version: '1.3.2-baseline';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load.
    self verify: 'GoferBeau' version: 'GoferBeau-dkh.55'.
    self verifyPackageNotLoaded: 'GeauxBar'.
    self verifyPackageNotLoaded: 'GeauxBeau'.
    self verifyPackageNotLoaded: 'GoferFoo'.
    self verifyPackageNotLoaded: 'GoferFaux'.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectToolBox'.
            '1.3.2-baseline'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}}