accessing
shiftedYellowButtonMenu
	"Answer the menu to be presented when the yellow button is pressed while the shift key is down"
	| menu |
	menu := UIManager default newMenuIn: self for: self.
	menu addList: {
		
		{'Browse it (b)' translated.					#browseIt}.
		{'Senders of it (n)' translated.				#sendersOfIt}.
		{'Implementors of it (m)' translated.		#implementorsOfIt}.
		{'References to it (N)' translated.			#referencesToIt}.
		#-.
		{'Selectors containing it (W)' translated.	#methodNamesContainingIt}.
		{'Method strings with it (E)' translated.	#methodStringsContainingit}.
		{'Method source with it' translated.		#methodSourceContainingIt}.
		{'Class names containing it' translated.	#classNamesContainingIt}.
		{'Class comments with it' translated.		#classCommentsContainingIt}.
		{'Change sets with it' translated.			#browseChangeSetsWithSelector}.
	}.
	^menu