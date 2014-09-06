update40209
	"self new update40209"
	self withUpdateLog: '13969 Compression tests in correct package
	https://pharo.fogbugz.com/f/cases/13969

13959 Port to Pharo4: 4646 shiftEnclose: shall not hardcode the keyboard layout
	https://pharo.fogbugz.com/f/cases/13959

13967 FreeTypeFontSelectorDialogWindow does not list all available free type fonts
	https://pharo.fogbugz.com/f/cases/13967
	'.
	self loadTogether: self script209 merge: false.
	LogicalFontManager unload. 
.
	self flushCaches.
self cleanRepositories.
