pluginClassesSelectedIndex: anInteger

	pluginClassesSelectedIndex := anInteger.
	self changed: #pluginClassesSelectedIndex.
	self textModel setText: self getText