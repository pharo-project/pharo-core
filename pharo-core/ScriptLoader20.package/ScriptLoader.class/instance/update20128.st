pharo - updates
update20128
	"self new update20128"
	self withUpdateLog: '- Issue 5967:	Use FileSystem for everything (part Four). **THANKS** 
camillo for this effort.... 

Making sure we can save the image :)'.
	self loadTogether: self script118 merge: false.
	self flushCaches.
