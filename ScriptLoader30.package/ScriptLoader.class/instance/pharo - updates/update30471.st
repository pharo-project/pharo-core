update30471
	"self new update30471"
	self withUpdateLog: '11847 Some classes hold on to blocks statically: make sure #cleanUp resets those caches
	https://pharo.fogbugz.com/f/cases/11847'.
	self loadTogether: self script126 merge: false.
	ContextPart initializeTryNamedPrimitiveTemplateMethod.
SourceCodeProRegular new install.
SourceSansProRegular new install.
FreeTypeFontProvider current updateFromSystem.
SourceCodeFonts setSourceCodeFonts: 10.
	self flushCaches.
