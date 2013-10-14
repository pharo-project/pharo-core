testBaselineThenConfigurationCorrect
  "https://github.com/dalehenrich/metacello-work/issues/156"

  "Correct behavior
    - load BaselineOfGoo indirectly through ConfigurationOfProjectGoo
    - load ConfigurationOfGoo indirectly through ConfigurationOfProjectGoo
    - load without errors: same parent project"

  Metacello new
    configuration: 'ProjectGoo';
    version: '1.1.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  Metacello new
    configuration: 'ProjectGoo';
    version: '1.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load