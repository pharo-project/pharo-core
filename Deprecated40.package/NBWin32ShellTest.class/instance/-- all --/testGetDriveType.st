testGetDriveType

	self assert: (NBWin32Shell getDriveType:  'C:\')  = #DRIVE_FIXED