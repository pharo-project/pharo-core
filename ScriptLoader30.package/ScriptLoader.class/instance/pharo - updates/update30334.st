update30334
	"self new update30334"
	self withUpdateLog: '- issue 11418 RBBrowserEnvironment definesClass: is unfinished
	https://pharo.fogbugz.com/default.asp?11418

- issue 11417 Test for checking repeated code in superclasses must not watch in nativeBoost classes
	https://pharo.fogbugz.com/default.asp?11417
	
- issue 11415	More green tests for BehaviorTest and MetaclassTest
https://pharo.fogbugz.com/default.asp?11415'.
	self loadTogether: self script126 merge: false.
	(MCWorkingCopy allManagers 
	select: #modified)
	do: [ :each | each modified: false ]. .
	self flushCaches.
