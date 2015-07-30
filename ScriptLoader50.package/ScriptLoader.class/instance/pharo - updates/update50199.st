update50199
	"self new update50199"
	self withUpdateLog: '16067 remove #prepareDebuggerExample
	https://pharo.fogbugz.com/f/cases/16067

16066 Update Rubric 
	https://pharo.fogbugz.com/f/cases/16066

16006 Make new Pretty Printer the default
	https://pharo.fogbugz.com/f/cases/16006'.
	self loadTogether: self script50199 merge: false.
	self loadConfiguration: 'Rubric' version: '1.16.3'.
RBProgramNode formatterClass: BIConfigurableFormatter. 
BIConfigurableFormatter formatAsYouReadPolicy: false.
	self flushCaches.
