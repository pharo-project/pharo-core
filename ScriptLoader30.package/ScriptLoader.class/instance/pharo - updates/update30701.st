update30701
	"self new update30701"
	self withUpdateLog: '12625 toggling hierarchy/flat shows wrong package and hides selected class
	https://pharo.fogbugz.com/f/cases/12625

12664 move categories need to ensure RPackage and RPackageTag
	https://pharo.fogbugz.com/f/cases/12664

12665 Allow non-dirty packages to be included into slice
	https://pharo.fogbugz.com/f/cases/12665

12669 Autogenerate comment for update based on slices MC packages  present
	https://pharo.fogbugz.com/f/cases/12669

'.
	self loadTogether: self script354 merge: false.
	self flushCaches.
