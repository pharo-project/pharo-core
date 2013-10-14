testOriginalFie40Feaux35FeauxLoad
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Feaux'.
    self validateBlockFie40FeauxLoad value.
    ((Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') project version: '3.5') load: 'Feaux'.
    self validateBlockOriginalFie4035FeauxFeauxLoad value