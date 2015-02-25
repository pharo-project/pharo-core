update40511
	"self new update40511"
	self withUpdateLog: '14991 ExampleSlotWithDefaultValue: allow default to be set in definition
	https://pharo.fogbugz.com/f/cases/14991

14992 ScriptLoader: code path of Integrator needs to delete scripts, too
	https://pharo.fogbugz.com/f/cases/14992

14982 Improved support for unknown bytecode
	https://pharo.fogbugz.com/f/cases/14982'.
	self loadTogether: self script511 merge: false.
	self flushCaches.
