wrapBlock: aBlock

	^[ :buffer :length :payload |
		aBlock 
			value: buffer 
			value: length
			value: payload ]