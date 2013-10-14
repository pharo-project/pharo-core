testDefaultVersion
    | projectSpec |
    Metacello new
        configuration: 'ExternalX';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        load.
    projectSpec := Metacello registry
        configuration: 'ExternalX';
        list.
    self assert: projectSpec versionString = MetacelloScriptEngine defaultVersionString