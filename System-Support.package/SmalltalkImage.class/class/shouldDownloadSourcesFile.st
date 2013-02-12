settings
shouldDownloadSourcesFile
	"If true, when no sources file can be found, the file will be downloaded.
	The default is false."
	
	^ ShouldDownloadSourcesFile ifNil: [ ShouldDownloadSourcesFile := false ]