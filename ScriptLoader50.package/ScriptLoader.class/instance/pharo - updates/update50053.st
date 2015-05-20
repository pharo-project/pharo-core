update50053
	"self new update50053"
	self withUpdateLog: '15564 Association key:value:
	https://pharo.fogbugz.com/f/cases/15564

15549 "References an abstract class" should check method
	https://pharo.fogbugz.com/f/cases/15549

15566 Direct dependency from CompiledMethod to the bytecode set
	https://pharo.fogbugz.com/f/cases/15566

15523 Code Cruft Rule Only Matches One-Liners
	https://pharo.fogbugz.com/f/cases/15523'.
	self loadTogether: self script50053 merge: false.
	self flushCaches.
