testBaselineThenConfigurationConflict
  "Correct behavior
    - load BaselineOfGoo indirectly through ConfigurationOfProjectGoo
    - load ConfigurationOfGoo indirectly through ConfigurationOfProjectSoo
    - create conflict, because parent configs not the same"

  | triggered |
  Metacello new
    configuration: 'ProjectGoo';
    version: '1.1.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  triggered := false.
  Metacello new
    configuration: 'ProjectSoo';
    version: '1.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    onConflict: [ :ex | 
          triggered := true.
          ex allow ];
    load.
  self assert: triggered