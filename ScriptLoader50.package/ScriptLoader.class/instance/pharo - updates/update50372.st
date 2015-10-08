update50372
	"self new update50372"
	self withUpdateLog: '16737 fix all users of NautilusUI
	https://pharo.fogbugz.com/f/cases/16737

12354 includesSubstring: should return true when the argument is empty
	https://pharo.fogbugz.com/f/cases/12354

16738 Reflectivity: do not wrap primitives if there is no link
	https://pharo.fogbugz.com/f/cases/16738

16418 ScriptLoader>>diffServerRootString with Pharo 3 repo for Pharo 5?
	https://pharo.fogbugz.com/f/cases/16418'.
	self loadTogether: self script50372 merge: false.
	self flushCaches.
