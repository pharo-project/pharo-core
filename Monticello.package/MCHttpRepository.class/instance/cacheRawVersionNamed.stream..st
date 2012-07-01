i/o
cacheRawVersionNamed: aString stream: contents
	"directly forward the contents to the cache repository. 
	this avoids and unnecessary serialization step"
	MCCacheRepository default 
		writeStreamForFileNamed: aString 
		replace: true 
		do: [ :s| s nextPutAll: contents ]