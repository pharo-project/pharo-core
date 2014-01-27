testEnvironmentFor
	{  
		MacOSPlatform -> UnixEnvironment. 
	   	MacOSXPlatform -> UnixEnvironment. 
		UnixPlatform -> UnixEnvironment. 
		Win32Platform -> Win32Environment  } asDictionary 
		keysAndValuesDo: [ :platformClass :envClass |
			self 
				assert:  (OSEnvironment environmentFor: platformClass new) class
				equals: envClass ] 