update40071
	"self new update40071"
	self withUpdateLog: '13488 Small recategorization of Classes in Kernel
	https://pharo.fogbugz.com/f/cases/13488

13485 Move RPackageOrganizer>>#renamePackage:in: to Deprecated40
	https://pharo.fogbugz.com/f/cases/13485

13477 Small critique cleanup RPackage
	https://pharo.fogbugz.com/f/cases/13477

'.
	self loadTogether: self script71 merge: false.
	self flushCaches.
self cleanRepositories.
