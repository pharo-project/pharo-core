update30742
	"self new update30742"
	self withUpdateLog: '12794 Class comments missing in UpdateStreamer package
	https://pharo.fogbugz.com/f/cases/12794

12802 Class comments missing for Kernel package
	https://pharo.fogbugz.com/f/cases/12802

12804 Class comment missing in AST packages
	https://pharo.fogbugz.com/f/cases/12804

12797 Class comments missing for tools package
	https://pharo.fogbugz.com/f/cases/12797

12796 Class comments missing for Traits package
	https://pharo.fogbugz.com/f/cases/12796

12798 Class comments missing in GroupManager package
	https://pharo.fogbugz.com/f/cases/12798

12806 Class comment missing in package FreeType + categorizing for FreeTypeCacheTest
	https://pharo.fogbugz.com/f/cases/12806

12800 EyeContextInspector should be renamed to EyeMethodContextInspector
	https://pharo.fogbugz.com/f/cases/12800

'.
	self loadTogether: self script395 merge: false.
	self flushCaches.
