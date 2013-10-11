update30470
	"self new update30470"
	self withUpdateLog: '11839 New L&F for Pharo30 (first iteration)
	https://pharo.fogbugz.com/f/cases/11839
'.
	self loadTogether: self script125 merge: false.
	Pharo3Theme beCurrent.
ThemeIcons current: EclipseUIThemeIcons new.
World resetWorldMenu.
NautilusUI resetIconCaches.
FreeTypeSystemSettings loadFt2Library: true.
SourceCodeFonts setSourceCodeFonts: 10.
.
	self flushCaches.
