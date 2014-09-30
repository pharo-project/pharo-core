scrollButtonSelected: selectedAnnouncement

	"notify adapter that we need to update pane preview"
	
	GLMPagerPanePreviewMorph uniqueInstance showAt: (indicatorButtons at: selectedAnnouncement buttonModel pageIndex) bounds topCenter.
	pagerModel updatePreview: selectedAnnouncement buttonModel pageIndex.