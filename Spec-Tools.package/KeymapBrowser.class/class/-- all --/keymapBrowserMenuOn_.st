keymapBrowserMenuOn: aBuilder 
	"I build a menu"
	<worldMenu>
	(aBuilder item: #'Keymap Browser')
		parent: #System;
		order: 4;
		action: [ self new openWithSpec ];
		help: 'List all know shortcuts and Keymapping categories'.