gtExampleMenuItemMorphWithoutSubitems
	<gtExample: 'Menu item without subitems'>
	^ World worldMenu items 
		detect: [ :each | each contents = 'System Browser' ]