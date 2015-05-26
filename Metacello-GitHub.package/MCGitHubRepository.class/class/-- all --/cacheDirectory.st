cacheDirectory
  self resetCacheDirectoryIfInvalid.
  CacheDirectory ifNil: [ CacheDirectory := self defaultCacheDirectory ].
  ^ CacheDirectory