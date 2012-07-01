pharo - updates
update20095
	"self new update20095"
	self withUpdateLog: 'Issue 5971:	Nautilus: Opening issue when opening on a method
	http://code.google.com/p/pharo/issues/detail?id=5971
	
Issue 5970:	CommandLine eval does not work completely
	http://code.google.com/p/pharo/issues/detail?id=5970
	
Issue 5962:	62 tests failing after integrating Issue 5755:
	http://code.google.com/p/pharo/issues/detail?id=5962
	
Issue 5972:	Clean in perform: aSelector orSendTo: another
	http://code.google.com/p/pharo/issues/detail?id=5972'.
	self loadTogether: self script84 merge: false.
	self flushCaches.
