update30536
	"self new update30536"
	self withUpdateLog: '12030 Incorporate Squeak CharacterScanner clean-up
	https://pharo.fogbugz.com/f/cases/12030
	(Step 1/2)

12053 Smalltalk tools remove: #objectExplorer	
	https://pharo.fogbugz.com/f/cases/12053'.
	self loadTogether: self script191 merge: false.
	Smalltalk tools remove: #objectExplorer.
.
	self flushCaches.
