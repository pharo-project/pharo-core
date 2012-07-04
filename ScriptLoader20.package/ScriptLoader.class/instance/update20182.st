pharo - updates
update20182
	"self new update20182"
	self withUpdateLog: 'Issue 6259:	DataStream is still there
	http://code.google.com/p/pharo/issues/detail?id=6259
	
Issue 6255:	Zinc Pharo Conference update with FileSystem support
	http://code.google.com/p/pharo/issues/detail?id=6255
	
Issue 6223:	FileLocator and FileRerernce have extension from File Package
	http://code.google.com/p/pharo/issues/detail?id=6223'.
	self loadTogether: self script172 merge: false.
	[SmalltalkImage current removeClassNamed: #DataStream] on:Error do: [].
SmalltalkImage removeSelector: #objectForDataStream:.
ScriptLoader new deletePackage: 'System'. .
	self flushCaches.
