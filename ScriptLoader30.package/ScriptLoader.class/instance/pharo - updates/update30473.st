update30473
	"self new update30473"
	self withUpdateLog: '11848 debugger should set code font
	https://pharo.fogbugz.com/f/cases/11848/
	
11851 MessageBrowser text should be codeFont
	https://pharo.fogbugz.com/f/cases/11851/
'.
	self loadTogether: self script128 merge: false.
	SourceCodeProRegular new install.
OpenSansRegular new install.
FreeTypeFontProvider current updateFromSystem.
SourceCodeFonts setSourceCodeFonts: 10.
	self flushCaches.
