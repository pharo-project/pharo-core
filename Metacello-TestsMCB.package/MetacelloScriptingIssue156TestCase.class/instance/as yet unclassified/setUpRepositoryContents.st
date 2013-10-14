setUpRepositoryContents
  | dict |
  super setUpRepositoryContents.
  Smalltalk
    at: #'Metacello_MczConfiguration_Test_Repository'
    put:
      (MCDictionaryRepository new
        dictionary: mczConfigurationRepository dictionary copy).
  dict := (Smalltalk at: #'Metacello_MczConfiguration_Test_Repository')
    dictionary.
  monticelloRepository dictionary
    keysAndValuesDo: [ :info :version | 
      "Horrible hack...shoudl use #storeVersion: ...  but this hack is too simple"
      dict at: info put: version ]