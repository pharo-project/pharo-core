downloadFile: url to: outputFileName
	"download a Zip file from <url> into <outputFileName>"
	outputFileName asFileReference ensureDelete.
	ZnClient new
		url: url;
		downloadTo: outputFileName.
    ^ ZipArchive new 
		readFrom: outputFileName asFileReference