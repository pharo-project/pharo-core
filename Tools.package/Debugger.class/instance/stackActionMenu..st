context stack menu
stackActionMenu: aMenu
	
	^ aMenu addList: #(
		('FullStack (f)'				fullStack)
		('Restart (r)'					restart)
		('Proceed (p)'				proceed)
		('Step (t)'					doStep)
		('Step through (T)'			stepIntoBlock)
		('Send (e)'					send)
		('Where (w)'				where)
		('Peel to first like this'		peelToFirst) 
		-				
		('Return entered value'		returnValue)
		-
		('Toggle break on entry'	toggleBreakOnEntry)).
