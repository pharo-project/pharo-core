testIndirectConfigurationLoadingBaseline
  "https://github.com/dalehenrich/metacello-work/issues/156"

  "ConfigurationOfProjectGoo loads ConfigurationOfGoo 1.0.0, BaselineOfGoo 1.1.0, 
   then ConfigurationOfGoo 4.0.0 (2.0.0) and 5.0.0 (3.0.0) both of which are 
   configurations that load baselines"

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
    load.
  Metacello new
    configuration: 'ProjectGoo';
    version: '2.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  Metacello new
    configuration: 'ProjectGoo';
    version: '3.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load