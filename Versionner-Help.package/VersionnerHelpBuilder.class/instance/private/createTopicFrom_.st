createTopicFrom: aDescription
	| topic cmd topics cmdTopic classTopic |
	topic := HelpTopic named: aDescription bookName.
	topic key: aDescription key.
	topic icon: aDescription icon.
	aDescription pages do: [ :pageSelector | topic addSubtopic: (aDescription perform: pageSelector) ].
	cmdTopic := HelpTopic title: 'Menu Items' icon: (HelpIcons iconNamed: #packageIcon) contents: ''.
	topic addSubtopic: cmdTopic.
	{MBConfigurationInfo.
	MBBaselineInfo.
	MBVersionInfo.
	MBPackageInfo.
	MBProjectInfo.
	MBGroupInfo}
		do: [ :class | 
			topics := OrderedCollection new.
			classTopic := HelpTopic title: class helpLabel icon: (HelpIcons iconNamed: #packageIcon) contents: ''.
			(Pragma allNamed: #command from: class to: MBInfo)
				do: [ :pragma | 
					self
						command: pragma
						for: class
						do: [ :factory | 
							cmd := factory target: class cmdNew for: self.
							topics add: (HelpTopic title: cmd title contents: cmd helpDocumentation) ] ].
			(topics asArray sort: [ :a :b | a title <= b title ]) do: [ :t | classTopic addSubtopic: t ].
			cmdTopic addSubtopic: classTopic ].
	^ topic