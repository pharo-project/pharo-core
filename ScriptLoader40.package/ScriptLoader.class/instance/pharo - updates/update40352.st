update40352
	"self new update40352"
	self withUpdateLog: '14384 Move DropListItem to Spec-Core-Widgets-Support
	https://pharo.fogbugz.com/f/cases/14384

14381 Replace Announcer>>#on:send:to:s senders in Versionner-Core-Model
	https://pharo.fogbugz.com/f/cases/14381

14386 Small critic pass over HelpSystem-Core
	https://pharo.fogbugz.com/f/cases/14386'.
	self loadTogether: self script352 merge: false.
	
ScriptLoader new deletePackage: 'KeyChainTest'.
	self flushCaches.
