gtExampleMenuItemMorphWithSubitems
	<gtExample: 'Menu item with subitems'>
	^ World worldMenu items 
		detect: [ :each | each contents = 'System' ]