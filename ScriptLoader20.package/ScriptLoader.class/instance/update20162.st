pharo - updates
update20162
	"self new update20162"
	self withUpdateLog: 'Issue 6157:	remove dead lmmplugin code
	http://code.google.com/p/pharo/issues/detail?id=6157
	
Issue 6161:	Finder: Change Pattern back to Examples
	http://code.google.com/p/pharo/issues/detail?id=6161
	
Issue 6168:	Changeset>>#superclassOrder: should be only used by ChangeSet related objects
	http://code.google.com/p/pharo/issues/detail?id=6168
'.
	self loadTogether: self script152 merge: false.
	self flushCaches.
