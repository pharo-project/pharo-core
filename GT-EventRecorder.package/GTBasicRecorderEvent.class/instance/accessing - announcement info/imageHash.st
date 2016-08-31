imageHash
	^ self infoAt: #imageHash ifAbsent: [ SmalltalkImage current imagePath hash ]