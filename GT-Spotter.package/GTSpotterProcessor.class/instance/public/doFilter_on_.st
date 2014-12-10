doFilter: aStringQuery on: aStream
	"override this method to:
	- add items to the stream
	- return all found items at the end"
	self subclassResponsibility