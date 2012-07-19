protocol-events
whenShortcutsChanged: aBlock
	<api: #event>
	"Set a block to value when the shortcuts block has changed"
	
	shortcutsHolder whenChangedDo: aBlock