pharo - updates
update20368
	"self new update20368"
	self withUpdateLog: 'Issue 6868:	Failing test: Tests.Release.ReleaseTest.testUnpackagedClasses
	http://code.google.com/p/pharo/issues/detail?id=6868
		
MCWorkingCopy allManagers do: #packageSet.
RPackageOrganizer initializ'.
	self loadTogether: self script350 merge: false.
	MCWorkingCopy allManagers do: #packageSet.
RPackageOrganizer initialize.
	self flushCaches.
