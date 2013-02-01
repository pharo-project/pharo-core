menu declaration
smalltalkEditorMenuOn: aBuilder 
	"Specify the menu used when writing code. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'smalltalkEditorMenu'
		model: nil) menu popUpInWorld
	"
	<smalltalkEditorMenu>
	| uitheme|
	uitheme := UITheme current.
	
	UsersManager default currentUser canEvaluateCode ifTrue: [
		(aBuilder item: #'Do it (d)' translated) selector: #doIt; help: nil; icon: uitheme  smallDoItIcon.
		(aBuilder item: #'Print it (p)' translated) selector: #printIt; help: nil; icon: uitheme  smallPrintItIcon. ].
	UsersManager default currentUser canInspect ifTrue: [
		(aBuilder item: #'Inspect it (i)' translated) selector: #inspectIt; help: nil; icon: uitheme  smallInspectItIcon.
		(aBuilder item: #'Explore it (I)' translated) selector: #exploreIt; help: nil; icon: uitheme  smallInspectItIcon ].
	UsersManager default currentUser canDebug ifTrue: [
		(aBuilder item: #'Debug it (D)' translated) selector: #debugIt; help: nil; icon: uitheme  smallDebugIcon.
		(aBuilder item: #'Profile it' translated) selector: #tallyIt; icon: uitheme smallDebugIcon; withSeparatorAfter. ].
	(aBuilder item: #'Find...(f)' translated) selector: #find; help: nil; icon: uitheme  smallFindIcon.
	(aBuilder item: #'Find again (g)' translated) selector: #findAgain; help: nil; icon: uitheme  smallFindIcon.
	UsersManager default currentUser canBrowse ifTrue: [
		(aBuilder item: #'Extended search...' translated) selector: #shiftedTextPaneMenuRequest; withSeparatorAfter ].
	(aBuilder item: #'Do again (j)' translated) selector: #again; help: nil; icon: uitheme  smallRedoIcon.
	(aBuilder item: #'Undo (z)' translated) selector: #undo; help: nil; icon: uitheme  smallUndoIcon; withSeparatorAfter.
	(aBuilder item: #'Copy (c)' translated) selector: #copySelection; help: nil; icon: uitheme  smallCopyIcon.
	(aBuilder item: #'Cut (x)' translated) selector: #cut; help: nil; icon: uitheme  smallCutIcon.
	(aBuilder item: #'Paste (v)' translated) selector: #paste; help: nil; icon: uitheme  smallPasteIcon.
	(aBuilder item: #'Paste...' translated) selector: #pasteRecent; help: nil; icon: uitheme  smallCopyIcon; withSeparatorAfter.
	UsersManager default currentUser canEvaluateCode ifTrue: [
		(aBuilder item: #'Accept (s)' translated) selector: #accept; help: nil; icon: uitheme  smallOkIcon.
		(aBuilder item: #'Cancel (l)' translated) selector: #cancel; help: nil; icon: uitheme  smallCancelIcon ].
