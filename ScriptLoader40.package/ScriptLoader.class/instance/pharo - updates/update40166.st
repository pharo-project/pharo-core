update40166
	"self new update40166"
	self withUpdateLog: '13817 remove setting for showing diffs in change list
	https://pharo.fogbugz.com/f/cases/13817

13807 nil protocol and unclassified in ValueLink
	https://pharo.fogbugz.com/f/cases/13807

13805 mustBeBooleanMagicIn: can crash the vm
	https://pharo.fogbugz.com/f/cases/13805

'.
	self loadTogether: self script166 merge: false.
	self flushCaches.
self cleanRepositories.
