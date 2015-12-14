XWarpPointer: display sourceWindow: srcWindowID destWindow: destWindowID sourceX: srcX sourceY: srcY sourceWidth: srcWidth sourceHeight: srcHeight destX: destX destY: destY
	<cdecl: bool 'XWarpPointer' (X11Display* ulong ulong long long ulong ulong long long) module: 'X11'>
	^self externalCallFailed