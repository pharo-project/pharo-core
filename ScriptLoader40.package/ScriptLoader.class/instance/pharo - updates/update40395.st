update40395
	"self new update40395"
	self withUpdateLog: '14553 FreeType default fonts not correctly loaded when image initializes
	https://pharo.fogbugz.com/f/cases/14553'.
	self loadTogether: self script395 merge: false.
	
EmbeddedFreeTypeFontInstaller resetCurrent.
FreeTypeFontProvider current 
	updateEmbeddedFreeTypeFonts;
	buildFamilies.
LogicalFont allInstances do: #clearRealFont.
SourceCodeFonts setSourceCodeFontsDefault. .
	self flushCaches.
