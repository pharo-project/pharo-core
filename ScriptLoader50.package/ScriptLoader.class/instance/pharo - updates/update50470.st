update50470
	"self new update50470"
	self withUpdateLog: '17098 Improve Date class API
	https://pharo.fogbugz.com/f/cases/17098

17127 Fix watchpoints 
	https://pharo.fogbugz.com/f/cases/17127

17125 Metadata-less compatibility with FileTree
	https://pharo.fogbugz.com/f/cases/17125

17126 Watchpoint window should use Watchpoint start/stop API instead of Install/Uninstall
	https://pharo.fogbugz.com/f/cases/17126'.
	self loadTogether: self script50470 merge: false.
	self flushCaches.
