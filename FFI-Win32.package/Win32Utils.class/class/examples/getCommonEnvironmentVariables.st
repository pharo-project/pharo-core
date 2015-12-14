getCommonEnvironmentVariables
	"Returns a dictionary with common environment variables for Win32 systems"

	|map|
	map := Dictionary new.
	#('ALLUSERSPROFILE' 'APPDATA' 'COMPUTERNAME' 'COMSPEC' 'HOMEDRIVE' 'HOMEPATH' 'LOGONSERVER'
       'SYSTEMDRIVE' 'OS' 'PATH' 'SYSTEMROOT' 'TEMP' 'TMP' 'USERDOMAIN' 'USERNAME' 'USERPROFILE' 'WINDIR') 
		do: [:each | map at: each put: (self getEnvironmentVariable: each)].
	^map
		