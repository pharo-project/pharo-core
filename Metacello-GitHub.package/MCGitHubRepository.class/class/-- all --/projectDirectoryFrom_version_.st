projectDirectoryFrom: projectPath version: versionString
  | mcPlatform githubCacheDirectory projectDirectory downloadCacheKey cachePath |
  downloadCacheKey := self downloadCacheKey: projectPath version: versionString.
  mcPlatform := MetacelloPlatform current.
  githubCacheDirectory := mcPlatform
    directoryFromPath: versionString
    relativeTo: (self cacheDirectoryFor: projectPath).
  cachePath := self downloadCache at: downloadCacheKey ifAbsent: [  ].
  (cachePath isNil
    or: [ 
      (projectDirectory := mcPlatform
        directoryFromPath: cachePath
        relativeTo: githubCacheDirectory) exists not ])
    ifTrue: [ 
      | url archive directory zipFileName |
      MetacelloScriptGitHubDownloadNotification new
        projectPath: projectPath;
        versionString: versionString;
        signal.	"for testing purposes"
      mcPlatform ensureDirectoryExists: githubCacheDirectory.
      url := 'https://github.com/' , projectPath , '/zipball/' , versionString.
      zipFileName :=  MetacelloPlatform current 
						tempFileFor: 'github-' , (downloadCacheKey select: [ :c | c isAlphaNumeric ]) 
						suffix: '.zip'.
      archive := MetacelloPlatform current downloadFile: url to: zipFileName.
      directory := mcPlatform
        directoryFromPath: (cachePath := archive members first fileName)
        relativeTo: githubCacheDirectory.
      directory exists
        ifFalse: [ 
          MetacelloPlatform current
            extractRepositoryFrom: zipFileName
            to: githubCacheDirectory fullName ].
      self downloadCache at: downloadCacheKey put: cachePath.
      projectDirectory := mcPlatform
        directoryFromPath: cachePath
        relativeTo: githubCacheDirectory ].
  ^ projectDirectory