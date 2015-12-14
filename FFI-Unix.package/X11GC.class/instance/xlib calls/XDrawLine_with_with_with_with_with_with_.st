XDrawLine: xDisplay with: aDrawable with: xGC with: x0 with: y0 with: x1 with: y1
	<cdecl: long 'XDrawLine' (X11Display* X11Drawable X11GC long long long long) module: 'X11'>
	^self externalCallFailed