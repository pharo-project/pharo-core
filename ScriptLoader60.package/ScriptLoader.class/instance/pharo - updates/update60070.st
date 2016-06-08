update60070
	"self new update60070"
	self withUpdateLog: '18442 ConfigurationOfGToolkitCore needs update
	https://pharo.fogbugz.com/f/cases/18442

18441 ConfigurationOfGTPlaygroundCore needs update
	https://pharo.fogbugz.com/f/cases/18441

18439 Remove QA git leftovers
	https://pharo.fogbugz.com/f/cases/18439'.
	self loadTogether: self script60070 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.22'.
self loadConfiguration: 'GTPlaygroundCore' version: '3.10'.
#(BaselineOfRenraku ConfigurationOfRenraku BaselineOfQualityAssistant ConfigurationOfQualityAssistant) do: [ :name | ScriptLoader new unloadPackageNamed: name ].
	self flushCaches.
