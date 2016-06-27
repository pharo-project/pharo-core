update60119
	"self new update60119"
	self withUpdateLog: '18627 QualityAssistant v3.1.1
	https://pharo.fogbugz.com/f/cases/18627

18609 Add tests for String initialization
	https://pharo.fogbugz.com/f/cases/18609

18595 CompiledMethod is missing #name methof
	https://pharo.fogbugz.com/f/cases/18595'.
	self loadTogether: self script60119 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.1.1'.self flushCaches.
