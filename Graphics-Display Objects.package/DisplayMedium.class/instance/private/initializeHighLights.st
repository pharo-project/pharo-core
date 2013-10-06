initializeHighLights 
	
	"Create a set of Bitmaps for quickly reversing areas of the screen without converting colors. "
	| t |
	t := Array new: 32.
	t 
		at: 1
		put: (Bitmap with: 4294967295).
	t 
		at: 2
		put: (Bitmap with: 4294967295).
	t 
		at: 4
		put: (Bitmap with: 1431655765).
	t 
		at: 8
		put: (Bitmap with: 117901063).
	t 
		at: 16
		put: (Bitmap with: 4294967295).
	t 
		at: 32
		put: (Bitmap with: 4294967295).
	^ t