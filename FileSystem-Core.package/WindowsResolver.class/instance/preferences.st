origins
preferences
	"For further details refer to http://code.google.com/p/pharo/issues/detail?id=5255" 

	|  osMajorVer osMinorVer rootPath exeFolderList  |
	
	self flag: #todo. "This is still not working (and is crap). It does not work with localized windows and other stuff. Only razonable way to do this is to create a plugin who access right preferences"
	
	"First try to adhere to hardcoded Microsoft conventions - though we really should be reading environment variables since %SYSTEMDRIVE% might not be C: "
	
       osMajorVer := Smalltalk os version first.   
       osMinorVer := Smalltalk os version third.

       osMajorVer >= $6 
		ifTrue: [ rootPath := 'C:\ProgramData\Pharo\' ].   "Vista, 2008, 7 and later"  
       osMajorVer = $5 
		ifTrue: [ rootPath := 'C:\Documents and Settings\All Users\Application Data\Pharo\' ]. "2000, XP, 2003"
       osMajorVer = $4 
		ifTrue: [  rootPath := 'C:\Windows\All Users\Application Data\Pharo\' . "98, 98SE, Me"
           osMinorVer = $0 
			ifTrue: [ rootPath := 'C:\WinNT\Profiles\All Users\Application Data\Pharo\' ] .    "NT 4"
     	].
       osMajorVer = $3 
		ifTrue: [ rootPath := 'C:\WinNT\Profiles\All Users\Application Data\Pharo\' ] . "NT 3.1 3.5 3.51"	

	"Now work out which rootPath user is using.  Perhaps we should inform users of their specific options"	
	rootPath ifNotNil: [ 
		rootPath := rootPath asFileReference.
		rootPath exists 
			 ifTrue: [ ^ rootPath ] ].
		
	"This "	
	rootPath := FileSystem disk workingDirectory / '_config' / 'Pharo'.
	(rootPath exists and: [ rootPath isDirectory ])
		ifTrue: [ ^ rootPath ].
		
	^ FileSystem disk workingDirectory. "Avoids later MNU"