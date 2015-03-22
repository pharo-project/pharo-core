update40575
	"self new update40575"
	self withUpdateLog: '15206 PostScript was not executed for issue 15182?
	https://pharo.fogbugz.com/f/cases/15206

15203 Failing test: PackageTreeNautilusTest>>#testFullBrowseOnClass
	https://pharo.fogbugz.com/f/cases/15203

14470 ReleaseTes>>#testObsoleteClasses failiing due to AnObsoleteClassForObsoleteTest
	https://pharo.fogbugz.com/f/cases/14470'.
	self loadTogether: self script575 merge: false.
	
Smalltalk tools register: EyeInspector as: #basicInspector.
	self flushCaches.
