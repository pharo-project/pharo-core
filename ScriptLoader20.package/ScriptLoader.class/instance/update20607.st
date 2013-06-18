pharo - updates
update20607
	"self new update20607"
	self withUpdateLog: '10938 backport 2.0 : an MCOrganizationDefinition should only remove empty categories during unload
	https://pharo.fogbugz.com/f/cases/10938
	
10909 Backport Pharo2.0: Prepare isHeadless for new VMs with double dash -- arguments
	https://pharo.fogbugz.com/f/cases/10909'.
	self loadTogether: self script580 merge: false.
	self flushCaches.
