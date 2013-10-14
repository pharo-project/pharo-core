testConfigurationThenBaselineNoPreload
  "https://github.com/dalehenrich/metacello-work/issues/156"

  "If you don't preload BaselineOfGoo package the MNU for compareEqual: 
   doesn't happen? Yes, because the error is occuring while ensuring that 
   the configuration/baseline is present in the image ... if the class isn't 
   present we unconditionally load the configuration/baseline...so the 
   following should load without error"

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