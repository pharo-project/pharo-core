update30492
	"self new update30492"
	self withUpdateLog: '11907 add Nautilus to shutDownList
	https://pharo.fogbugz.com/f/cases/11907
		
11906 HDTestReport measures the wrong duration
	https://pharo.fogbugz.com/f/cases/11906

5548 author should be added to RGMethodDefinition and authors to RGClassDefinition
	https://pharo.fogbugz.com/f/cases/5548/'.
	self loadTogether: self script147 merge: false.
	Smalltalk addToShutDownList: Nautilus.
.
	self flushCaches.
