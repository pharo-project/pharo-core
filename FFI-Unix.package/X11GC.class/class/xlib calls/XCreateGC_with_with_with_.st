XCreateGC: xDisplay with: aDrawable with: valueMask with: values
	<cdecl: X11GC 'XCreateGC' (X11Display* X11Drawable ulong long*) module: 'X11'>
	^self externalCallFailed