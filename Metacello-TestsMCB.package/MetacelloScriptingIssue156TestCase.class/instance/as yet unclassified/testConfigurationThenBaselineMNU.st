testConfigurationThenBaselineMNU
  "https://github.com/dalehenrich/metacello-work/issues/156"

  "MNU for #compareEqual:
    - preload BaselineOfGoo package
    - load ConfigurationOfGoo indirectly through ConfigurationOfProjectGoo
    - attempt to load BaselineOfGoo indirectly through ConfigurationOfProjectGoo
   ...SHOULD LOAD WITHOUT ERRORS ... baseline trumps configuration, because it is 
   expected to have a baseline loaded by a configuration"

  Gofer new
    repository: mczConfigurationRepository;
    package: 'ConfigurationOfProjectGoo';
    package: 'ConfigurationOfGoo';
    package: 'BaselineOfGoo';
    load.
  Metacello new
    configuration: 'ProjectGoo';
    version: '1.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  Metacello new
    configuration: 'ProjectGoo';
    version: '1.1.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load