pharo - updates
update20591
	"self new update20591"
	self withUpdateLog: '10014	World menu > System > Switch User serves no purpose
	https://pharo.fogbugz.com/f/cases/10014/World-menu-System-Switch-User-serves-no-purpose
	
10004	SmalltalkImage current reportCPUandRAM > DNU
	https://pharo.fogbugz.com/f/cases/10004/SmalltalkImage-current-reportCPUandRAM-DNU
'.
	self loadTogether: self script565 merge: false.
	self flushCaches.
