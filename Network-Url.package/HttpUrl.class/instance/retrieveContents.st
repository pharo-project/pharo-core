downloading
retrieveContents
	"Download and return the resource that I refer to.
	This will typically return a String or a ByteArray (see ZnClient>>#get:).
	If something goes wrong, an exception will be signalled."
	
	" 'http://zn.stfx.eu/zn/numbers.txt' asUrl retrieveContents. "

	^ self asZnUrl retrieveContents