update30757
	"self new update30757"
	self withUpdateLog: '12662 "Unknown Variable" name correction doesnt work properly in Nautilus
	https://pharo.fogbugz.com/f/cases/12662

12864 Class comments missing in package Hudson
	https://pharo.fogbugz.com/f/cases/12864

12866 Class comments missing in package ProfStef
	https://pharo.fogbugz.com/f/cases/12866

12867 Class comments missing for RPackage package
	https://pharo.fogbugz.com/f/cases/12867

12863 Class comments missing in Graphics-Transformations package
	https://pharo.fogbugz.com/f/cases/12863

'.
	self loadTogether: self script410 merge: false.
	self flushCaches.
