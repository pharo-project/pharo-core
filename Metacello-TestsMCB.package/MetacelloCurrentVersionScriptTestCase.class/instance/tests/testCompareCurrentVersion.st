testCompareCurrentVersion
     Transcript
        cr;
        show: 'STARTING SCRIPTING testCompareCurrentVersion'.
   Metacello new
        project: 'Feaux';
        className: 'MetacelloTestConfigurationOfFeaux';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'GeauxFoo'.
     Transcript
        cr;
        show: 'GeauxFoo'.

    self verify: 'GeauxFoo' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
     Transcript
        cr;
        show: 'MetacelloTestConfigurationOfFeaux'.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfFeaux'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}}.
    Metacello new
        project: 'Project Foe';
        className: 'MetacelloTestConfigurationOfProjectFoe';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'ALL'.
     Transcript
        cr;
        show: 'GeauxFoo'.
    self verify: 'GeauxFoo' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
     Transcript
        cr;
        show: 'GoferFoo'.
    self verify: 'GoferFoo' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
     Transcript
        cr;
        show: 'GoferBar'.
    self verify: 'GoferBar' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
     Transcript
        cr;
        show: 'MetacelloTestConfigurationOfFeaux'.
     self
        validateProjects:
            {{'MetacelloTestConfigurationOfFeaux'.
             '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}.
            {'MetacelloTestConfigurationOfProjectFoe'.
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
            nil}}.
     Transcript
        cr;
        show: 'ENDING SCRIPTING testCompareCurrentVersion'.
