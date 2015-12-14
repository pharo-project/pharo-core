apiDrawFrameControl: aHDC with: lpRect with: type with: state
	"Draws a frame control of the specified type and style"
	<apicall: bool 'DrawFrameControl' (Win32HDC Win32Rectangle* ulong ulong) module: 'user32.dll'>
	^ self externalCallFailed