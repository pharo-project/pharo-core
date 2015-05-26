gtTopicIcon
	^ (HelpIcons iconNamed: (self hasSubtopics
		 ifTrue: [#bookIcon] 
	    ifFalse: [#pageIcon]))