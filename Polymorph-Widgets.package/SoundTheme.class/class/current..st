as yet unclassified
current: aSoundTheme
	"Set the current sound theme."

	Current := aSoundTheme.
	SoundTheme allThemeClasses do: [:c | c changed: #isCurrent]