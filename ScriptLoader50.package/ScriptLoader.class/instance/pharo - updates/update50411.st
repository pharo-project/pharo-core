update50411
	"self new update50411"
	self withUpdateLog: '16890 remove ClassesIconsCache and GroupsIconsCache from Nautilus
	https://pharo.fogbugz.com/f/cases/16890

16897 Metaclass>>#name has two critics
	https://pharo.fogbugz.com/f/cases/16897

16889 Inst Var Refactoring-Accessors generate source with linefeeds
	https://pharo.fogbugz.com/f/cases/16889

16895 New test for binary selector support
	https://pharo.fogbugz.com/f/cases/16895'.
	self loadTogether: self script50411 merge: false.
	self flushCaches.
