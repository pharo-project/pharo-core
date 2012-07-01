opening
fullReportMenuOn: aBuilder 
	"Specify the menu with a specific pragma. Try it with:
	(PragmaMenuBuilder 
		pragmaKeyword: 'TimeProfilerFullReportMenu'
		model: nil) menu popUpInWorld"

	<TimeProfilerFullReportMenu>
	| uitheme |
	uitheme := UITheme current.
	(aBuilder item: #'Find...(f)' translated) selector: #find; help: nil; icon: uitheme smallFindIcon.
	(aBuilder item: #'Find again (g)' translated) selector: #findAgain; help: nil; icon: uitheme smallFindIcon.
	(aBuilder item: #'Set search string (h)' translated) selector: #setSearchString.
	(aBuilder item: #'Copy (c)' translated) selector: #copySelection; help: nil; icon: uitheme  smallCopyIcon.
