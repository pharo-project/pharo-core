renameCategory
	| protocol |

	protocol  := self selectedProtocol. 
	protocol ifNil: [ ^ self ].
	
	protocol canBeRenamed 
		ifFalse: [ ^ self inform: ('You can not rename "{1}" protocol.' format: { protocol name })  ].
	
	^ super renameCategory.