pharo - updates
update20398
	"self new update20398"
	self withUpdateLog: 'Issue 6971:	Inspector numberOfFixedFields cleanup
	http://code.google.com/p/pharo/issues/detail?id=6971
	
Issue 6969:	remove shrinkToCore
	http://code.google.com/p/pharo/issues/detail?id=6969
	
Issue 6972:	move UIManager >> theme to Polymorph
	http://code.google.com/p/pharo/issues/detail?id=6972'.
	self loadTogether: self script377 merge: false.
	self flushCaches.
