defaultCacheDirectory
  | defaultDirectory cacheDirectory |
  defaultDirectory := MetacelloPlatform current defaultDirectory.
  cacheDirectory := MetacelloPlatform current
    directoryFromPath: 'github-cache'
    relativeTo: defaultDirectory.
  MetacelloPlatform current ensureDirectoryExists: cacheDirectory.
  ^ cacheDirectory