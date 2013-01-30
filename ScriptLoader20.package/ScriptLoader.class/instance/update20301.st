pharo - updates
update20301
	"self new update20301"
	self withUpdateLog: 'Issue 6697:	Zn+Zdc Update 2012-09-19
	http://code.google.com/p/pharo/issues/detail?id=6697
	
Issue 6699:	Share binding of metaclass methods
	http://code.google.com/p/pharo/issues/detail?id=6699
	'.
	self loadTogether: self script288 merge: false.
	[| meta binding |
Smalltalk allClassesDo: [:each | 
	meta := each classSide.		
	binding := nil -> meta.
	meta methods do: [:aMethod | aMethod methodClassAssociation: binding]
]]value.
	self flushCaches.
