unzip: fullFileName 
	"Unzip the contents of a gzipped file specified by its full file name to the current working directory"
	
	^ self unzip: fullFileName to: FileSystem disk workingDirectory 