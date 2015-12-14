apiSetCursorPosX: x y: y
"this is apparently how to control the mouse cursor pragmatically on windows:
http://lists.squeakfoundation.org/pipermail/squeak-dev/2011-February/157676.html
"
	<apicall: bool 'SetCursorPos' (long long) module: 'user32.dll'>
	^self externalCallFailed