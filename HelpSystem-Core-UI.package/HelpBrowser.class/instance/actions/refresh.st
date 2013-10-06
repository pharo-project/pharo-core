refresh
	| helpTopic items |
	helpTopic := self helpTopic.
	window setLabel: helpTopic title.
	items := helpTopic subtopics collect: [ :each | HelpTopicListItemWrapper with: each ].
	treeMorph list: items.
	contentMorph setText: helpTopic contents