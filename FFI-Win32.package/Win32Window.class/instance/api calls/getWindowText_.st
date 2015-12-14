getWindowText: handleWindow 
	"self new getWindowText: Win32Window getFocus"
	
	|buffer maxSize |
	maxSize := 255.
	buffer := ByteArray new: maxSize.
	self apiGetWindowText: handleWindow buffer: buffer maxCount: maxSize.
	^buffer asString 