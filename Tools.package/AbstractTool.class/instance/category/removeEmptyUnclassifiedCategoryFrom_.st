removeEmptyUnclassifiedCategoryFrom: aClass
	"Remove the 'as yet unclassified' category from the class if empty"
	| unclassifiedProtocol protocolOrganizer |

	protocolOrganizer := aClass organization protocolOrganizer.
	unclassifiedProtocol := protocolOrganizer protocols 
		detect: [ :protocol | protocol name = Protocol unclassified ]
		ifNone: [ ^ self ].
	unclassifiedProtocol isEmpty 
		ifTrue: [ protocolOrganizer removeProtocol: unclassifiedProtocol ]