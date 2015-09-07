update50310
	"self new update50310"
	self withUpdateLog: '16493 Syntax highlighting in Rubric need to highlight characters
	https://pharo.fogbugz.com/f/cases/16493

16507 Simplify test running of Nautilus
	https://pharo.fogbugz.com/f/cases/16507

16506 Ensure wrapping #after for MethodNode
	https://pharo.fogbugz.com/f/cases/16506

16502 simple nautilus cleans
	https://pharo.fogbugz.com/f/cases/16502'.
	self loadTogether: self script50310 merge: false.
	self flushCaches.
