accessing
current: aUITheme
	"Set the current ui theme."

	Current := aUITheme.
	UITheme allThemeClasses do: [:c | c changed: #isCurrent].
	SystemProgressMorph reset. "reset to use new fill styles"
	ScrollBar initializeImagesCache. "reset to use new arrows"
	aUITheme updateWorldDockingBars.
	World themeChanged