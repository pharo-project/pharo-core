class initialization
unload
	"
	self unload
	"
	current ifNotNil: [current initialize].
	FreeTypeCache clearCurrent.
	LogicalFontManager unload
