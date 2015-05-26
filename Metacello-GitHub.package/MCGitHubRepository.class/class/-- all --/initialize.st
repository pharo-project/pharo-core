initialize
  "self initialize"

  Smalltalk addToStartUpList: self.
  self flushDownloadCache.
  self resetCacheDirectoryIfInvalid