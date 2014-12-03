update40396
	"self new update40396"
	self withUpdateLog: '12810 Examine TrueTest and FalseTest for the possibility of a common superclass
	https://pharo.fogbugz.com/f/cases/12810

14558 Monticello icon tools should indicate newer available package versions
	https://pharo.fogbugz.com/f/cases/14558

14557 Failign test: #testUnCategorizedMethods
	https://pharo.fogbugz.com/f/cases/14557

14560 InterpreterTest isAbstract should return true as it is abstract (without tests)
	https://pharo.fogbugz.com/f/cases/14560'.
	self loadTogether: self script396 merge: false.
	
ReleaseTest compileAll.
	self flushCaches.
