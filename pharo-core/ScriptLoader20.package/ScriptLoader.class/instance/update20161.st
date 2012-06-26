pharo - updates
update20161
	"self new update20161"
	self withUpdateLog: 'Issue 6169:	New Spec Version
	http://code.google.com/p/pharo/issues/detail?id=6169
	
Issue 6146:	Code completion in all tools - Part 2
	http://code.google.com/p/pharo/issues/detail?id=6146
	
Issue 6148:	realClass part of Ring
	http://code.google.com/p/pharo/issues/detail?id=6148
	
Issue 6172:	MCHttpRepository class-side method protocols
	http://code.google.com/p/pharo/issues/detail?id=6172
	
Issue 6159:	Fix PluggableTreeMorph to render whatever
	http://code.google.com/p/pharo/issues/detail?id=6159'.
	self loadTogether: self script151 merge: false.
	self flushCaches.
