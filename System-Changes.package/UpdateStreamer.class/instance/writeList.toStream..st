untested
writeList: listContents toStream: strm
	"Write a parsed updates.list out as text.
	This is the inverse of groupUpdatesByVersion:"

	"so far did not tested it - sd"
	[strm reset.
	listContents do:
		[:pair | | fileNames version | 
				version := pair first.  
				fileNames := pair last.
		strm nextPut: $#; nextPutAll: version; cr.
		fileNames do: [:fileName | strm nextPutAll: fileName; cr]]]
	ensure: [strm close]