XDrawRectangle: xDisplay with: xDrawable with: xGC with: x with: y with: w with: h
	<cdecl: void 'XDrawRectangle' (X11Display* X11Drawable X11GC long long ulong ulong) module: 'X11'>
	^self externalCallFailed