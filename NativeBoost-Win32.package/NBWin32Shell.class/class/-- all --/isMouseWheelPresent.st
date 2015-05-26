isMouseWheelPresent
	"Returns true if a mouse with a wheel is installed, false otherwise
	 Windows NT4.0 and later, Windows 98"
	
	^(self getSystemMetrics: SM_MOUSEWHEELPRESENT) ~= 0 