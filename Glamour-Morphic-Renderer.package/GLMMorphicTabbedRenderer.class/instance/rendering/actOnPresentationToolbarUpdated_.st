actOnPresentationToolbarUpdated: ann
	| presentations |

	presentations := ann presentation matchingPresentations.
	tabs pages size to: 1 by: -1 do: [ :i | (tabs pages at: i) toolbar: GLMMorphic emptyMorph ].	
	presentations withIndexDo: [ :each :i | 
		(tabs pages at: i)
			toolbar: (self renderToolbarForPresentation: each inMorph: tabs ).
		tabs updatePageIndex: i ]