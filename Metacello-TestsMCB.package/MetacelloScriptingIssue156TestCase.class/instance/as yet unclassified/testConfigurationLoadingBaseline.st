testConfigurationLoadingBaseline
  "https://github.com/dalehenrich/metacello-work/issues/156"

  "ConfigurationOfGoo 4.0.0 and 5.0.0 load the BaselineOfGoo ... this should 
   be a valid seuquence with no errors."

  Metacello new
    configuration: 'Goo';
    version: '3.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  Metacello new
    configuration: 'Goo';
    version: '4.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load.
  Metacello new
    configuration: 'Goo';
    version: '5.0.0';
    repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
    silently;
    load