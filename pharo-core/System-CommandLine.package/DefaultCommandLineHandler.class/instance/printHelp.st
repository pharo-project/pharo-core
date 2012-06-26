activation
printHelp
	self stdout 
		nextPutAll: 'Usage:'; cr;
		nextPutAll: '    --help       print this help message'; cr;
		nextPutAll: '    --copyright  print the copyrights'; cr;
		nextPutAll: '    --version    print the version for the image and the vm'; cr;
		nextPutAll: '    --list       list a description of all active command line handlers'; cr.