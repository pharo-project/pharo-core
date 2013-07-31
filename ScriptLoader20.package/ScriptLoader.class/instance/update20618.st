pharo - updates
update20618
	"self new update20618"
	self withUpdateLog: '11280 Integrate ProfStef into 2.0
	https://pharo.fogbugz.com/f/cases/11280
'.
	self loadTogether: self script591 merge: false.
	Gofer it 
	squeaksource3: 'MetaRepoForPharo20';
	configurationOf: 'ProfStef';
	load.
(Smalltalk at: #ConfigurationOfProfStef) load.
ScriptLoader new unloadPackageNamed: 'ConfigurationOfProfStef'.
	self flushCaches.
