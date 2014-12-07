update40403
	"self new update40403"
	self withUpdateLog: '12027 Merge is incredibly slow with Polymorph difference tools, and unusable without
	https://pharo.fogbugz.com/f/cases/12027'.
	self loadTogether: self script403 merge: false.
	self flushCaches.
