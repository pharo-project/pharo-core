update50037
	"self new update50037"
	self withUpdateLog: '15503 Add RPackage>>#mcWorkingCopy for MCSliceInfo>>#makeSlice
	https://pharo.fogbugz.com/f/cases/15503

15498 Improve Class Comment Template
	https://pharo.fogbugz.com/f/cases/15498

15505 Merge PackageTreeNautilus into Nautilus
	https://pharo.fogbugz.com/f/cases/15505

'.
	self loadTogether: self script646 merge: false.
	Smalltalk resetTools.
	self flushCaches.
self cleanRepositories.
