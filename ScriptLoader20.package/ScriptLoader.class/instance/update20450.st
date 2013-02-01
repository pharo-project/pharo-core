pharo - updates
update20450
	"self new update20450"
	self withUpdateLog: 'Issue 7162:	clean dead code Form/DisplayObject/Quadrangle
	http://code.google.com/p/pharo/issues/detail?id=7162
	
Issue 7168:	Newlis>>listForSearching has undeclared var getItemAtIndexSelector
	http://code.google.com/p/pharo/issues/detail?id=7168
	
Issue 7166:	CompiledMethod>>#getSource should be #sourceCode
	http://code.google.com/p/pharo/issues/detail?id=7166&
	
Issue 7165:	CleanUp MethodChangeRecord (part 1)
	http://code.google.com/p/pharo/issues/detail?id=7165'.
	self loadTogether: self script429 merge: false.
	self flushCaches.
