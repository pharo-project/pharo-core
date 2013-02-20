pharo - updates
update20559
	"self new update20559"
	self withUpdateLog: 'Issue 7492:	Failing test: MCRepositoryAuthorizationTest>>#testStoredCredentialsUsesMostSpecific
	http://code.google.com/p/pharo/issues/detail?id=7492
	
Issue 7341:	Failing test: ReleaseTest>>#testInstalledMethodsWithIncorrectTrailerKind
	http://code.google.com/p/pharo/issues/detail?id=7341'.
	self loadTogether: self script534 merge: false.
	self flushCaches.
