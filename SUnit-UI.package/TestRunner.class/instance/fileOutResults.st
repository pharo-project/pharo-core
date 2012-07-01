actions
fileOutResults
	| fileName defaultFilename stream printer |
	"Save current test results into text file."
	"Generate a filename like 'tests_Pharo-1.1-11367-Beta_23_May_2010_9:19:20_am.txt' "
	defaultFilename := 	'tests_',
						SystemVersion current version, 
						'_', 
						(result timeStamp asString copyReplaceAll: ' ' with: '_'),
						'.txt'.
	fileName := UIManager default 
		request: 'Enter the file name' 
		initialAnswer: defaultFilename.
	
	stream := MultiByteFileStream newFileNamed: fileName.	
	[result fileOutOn: stream] 
		ensure: [stream close].