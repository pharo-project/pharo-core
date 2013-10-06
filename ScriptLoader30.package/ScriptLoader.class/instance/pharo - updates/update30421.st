update30421
	"self new update30421"
	  Smalltalk tools remove:  #viewHierarchyExplorer.
.
	self withUpdateLog: '11537 remove #classVersion methods and friends
	https://pharo.fogbugz.com/f/cases/11537
	
11664 SHA1>>#hashStream: should return a ByteArray of size 20
	https://pharo.fogbugz.com/f/cases/11664
	
11663 remove ViewHierarchyExplorer
	https://pharo.fogbugz.com/f/cases/11663'.
	self loadTogether: self script100 merge: false.
	self flushCaches.
