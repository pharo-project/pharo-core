settingInputWidgetForNode: aSettingNode
	| catcherMorph theme |
	theme := UITheme builder.
	catcherMorph := KMCatcherMorph for: aSettingNode realValue.
	^ theme newRow: {catcherMorph}