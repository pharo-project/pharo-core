acceptMessageNode: aMessageNode
	| receiver |

	receiver := self interpret: aMessageNode receiver.
	
	self ifSkip: [^receiver ].
	
	^ self acceptMessageNode: aMessageNode receiver: receiver.