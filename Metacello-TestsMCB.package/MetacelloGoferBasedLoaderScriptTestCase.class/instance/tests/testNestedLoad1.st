testNestedLoad1
    MetacelloConfigurationResource projectAttributes: #(#'level1_1' #'level2_2' #'level3_2' #'level2_1').
    Metacello new
        project: 'ToolBox';
        className: 'MetacelloTestConfigurationOfProjectToolBox';
        version: '1.3.3-baseline';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load.
    self verify: 'GoferBar' version: 'GoferBar-jf.1'.
    self verify: 'GeauxBar' version: 'GeauxBar.branch-lr.2'.
    self verify: 'GeauxBeau' version: 'GeauxBeau-dkh.55'.
    self verify: 'GoferFoo' version: 'GoferFoo-lr.1'.
    self verifyPackageNotLoaded: 'GoferFaux'.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectToolBox'.
            '1.3.3-baseline'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}}