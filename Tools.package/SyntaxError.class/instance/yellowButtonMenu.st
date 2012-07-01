accessing
yellowButtonMenu
	| menu |
	menu := UIManager default newMenuIn: self for: self.
	menu addList: {
			{'Do it (d)' translated.					#doIt. nil. #smallDoItIcon}.
			{'Print it (p)' translated.					#printIt. nil. #smallPrintItIcon}.
			{'Inspect it (i)' translated.				#inspectIt. nil. #smallInspectItIcon}.
			{'Explore it (I)' translated.				#exploreIt. nil. #smallInspectItIcon}.
			{'Debug it (D)' translated.				#debugIt. nil. #smallDebugIcon}.
			{'Profile it' translated.					#tallyIt}.
			#-.
			{'Find...(f)' translated.					#find. nil. #smallFindIcon}.
			{'Find again (g)' translated.				#findAgain.nil. #smallFindIcon}.
			{'Extended search...' translated.			#shiftedTextPaneMenuRequest}.
			#-.
			{'Do again (j)' translated.				#again. nil. #smallDoItIcon}.
			{'Undo (z)' translated.					#undo. nil. #smallUndocon}.
			#-.
			{'Copy (c)' translated.					#copySelection. nil. #smallCopyIcon}.
			{'Cut (x)' translated.						#cut. nil. #smallCutIcon}.
			{'Paste (v)' translated.					#paste. nil. #smallPasteIcon}.
			{'Paste...' translated.					#pasteRecent. nil. #smallCopyIcon}.
			#-.
			{'Accept (s)' translated.					#accept. nil. #smallOkIcon}.
			{'Cancel (l)' translated.					#cancel. nil. #smallCancelIcon}.
		}.
	^menu