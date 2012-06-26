menu pragmas
sourceCodeMenu: aMenu shifted: shifted
	" Morphic's menus are filled up when pragma's one are returned from a method, so I have to substitute the morphic menu by the pragma one "
	
	^ aMenu becomeForward: (self sourceCodeMenuBuilder menu)