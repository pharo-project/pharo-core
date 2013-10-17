buildMorphWithOld
	pluggable := true.
	
	^ PluggableListMorph 
		on: self list: #getItems selected: #getIndex changeSelected: #setIndex: menu: #menu:shifted: