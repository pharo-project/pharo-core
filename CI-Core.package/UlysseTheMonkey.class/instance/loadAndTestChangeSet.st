protocol
loadAndTestChangeSet
	"load the changesets and run the test"
	
	self issue changeSets ifEmpty: [ ^ self ].
	
	self testChangeImpact: [ self loadChangeSet ].