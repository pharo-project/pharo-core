testAbsolutePath

	#('c:\' 'C:\temp' 'A:\temp\test') do: [:each |
		self assert: (WindowsStore current pathFromString: each) isAbsolute ] 
	