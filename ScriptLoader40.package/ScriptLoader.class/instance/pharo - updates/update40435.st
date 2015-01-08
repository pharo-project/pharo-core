update40435
	"self new update40435"
	self withUpdateLog: '14686 defaultClassDescriptor should print slot class definition when the setting is on
	https://pharo.fogbugz.com/f/cases/14686'.
	self loadTogether: self script435 merge: false.
	self flushCaches.
