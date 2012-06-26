visitor-double dispatching
acceptCascadeNode: aCascadeNode 
	| messages |
	messages := aCascadeNode messages.
	self visitNode: messages first receiver.
	self indentWhile: 
			[self 
				for: messages
				do: 
					[:each | 
					self
						indent;
						indentWhile: [self formatMessage: each cascade: true]]
				separatedBy: [codeStream nextPut: $;]]