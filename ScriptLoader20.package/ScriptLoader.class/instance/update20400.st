pharo - updates
update20400
	"self new update20400"
	self withUpdateLog: 'Issue 6975:	move some RGMethodDefinition to Ring-Monticello package
	http://code.google.com/p/pharo/issues/detail?id=6975
	
Issue 6973:	two ClassDescription>> #correspondingForTest issues
	http://code.google.com/p/pharo/issues/detail?id=6973
	
Issue 6970:	Morphic dependency in checkBasicClasses
	http://code.google.com/p/pharo/issues/detail?id=6970'.
	self loadTogether: self script379 merge: false.
	self flushCaches.
