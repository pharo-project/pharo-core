resetCacheDirectoryIfInvalid
  "Reset if invalid"

  CacheDirectory notNil
    and: [ 
      (MCFileTreeFileUtils current directoryExists: CacheDirectory)
        ifFalse: [ CacheDirectory := nil ] ]