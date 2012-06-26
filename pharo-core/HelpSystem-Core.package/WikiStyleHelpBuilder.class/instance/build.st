building
build
	| text extract topic syntax |
	topicToBuild title: 'Wiki style help'.
	self class allHelpPragmas do: [:each |	
		"Its assumed that if the pragma is a single keyword only the title is given
		 and the default syntax applies, otherwise the syntax is given as last parameter
		 on the pragmas keyword message" 	
		syntax := (each arguments size = 1) 
					ifTrue: [self defaultSyntax]
					ifFalse: [each arguments last].			
		text := each method methodClass theNonMetaClass perform: each method selector.
		extract := self extractHelpContentFromString: text.		 
		topic := self helpTopicFromFormattedString: extract title: each arguments first.
		topicToBuild addSubtopic: topic].