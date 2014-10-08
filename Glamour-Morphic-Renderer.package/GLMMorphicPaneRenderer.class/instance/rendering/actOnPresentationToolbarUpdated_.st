actOnPresentationToolbarUpdated: anAnnouncement
	"If this method is called contentMorph should be an tab widget"
	
	(contentMorph pages at: 1)
			toolbar: (self 
				renderToolbarForPresentation: anAnnouncement presentation 
				inMorph: contentMorph ).
	contentMorph updatePageIndex: 1
	
	