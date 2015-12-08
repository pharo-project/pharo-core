cacheDirectoryPath: aString
  self
    cacheDirectory:
      (aString
        ifEmpty: [  ]
        ifNotEmpty: [ MetacelloPlatform current fileHandleOn: aString ])