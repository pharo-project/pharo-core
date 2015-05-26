onItemClicked: anItem
	anItem ifNil: [ ^ contentMorph setText: rootTopic asHelpTopic contents ].
	contentMorph setText: anItem contents.
	contentMorph setSelection: (1 to: 0)