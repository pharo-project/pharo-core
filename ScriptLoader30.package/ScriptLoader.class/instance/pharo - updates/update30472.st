update30472
	"self new update30472"
	self withUpdateLog: '11839 New L&F for Pharo30 (first iteration, second try)
	https://pharo.fogbugz.com/f/cases/11839
'.
	self loadTogether: self script127 merge: false.
	SourceCodeProRegular new install.
OpenSansRegular new install.
FreeTypeFontProvider current updateFromSystem.
SourceCodeFonts setSourceCodeFonts: 10.
	self flushCaches.
