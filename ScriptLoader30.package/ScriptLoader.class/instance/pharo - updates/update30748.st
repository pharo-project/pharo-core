update30748
	"self new update30748"
	self withUpdateLog: '12789 RPackage>>#moveClass:fromPackage:toTag: Ignores Tag
	https://pharo.fogbugz.com/f/cases/12789

12827 Part II : Compiling a method often makes nautilus deselect the package
	https://pharo.fogbugz.com/f/cases/12827

12522 Package filter input capture all keyboard shortcuts
	https://pharo.fogbugz.com/f/cases/12522

12812 Class comments missing in package Spec-Tools and Spec-Tests and BlocEditor should be renamed to BlockEditor
	https://pharo.fogbugz.com/f/cases/12812

'.
	self loadTogether: self script401 merge: false.
	self flushCaches.
