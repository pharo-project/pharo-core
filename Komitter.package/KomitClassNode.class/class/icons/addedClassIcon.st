addedClassIcon

	^ addedClassIcon ifNil: [
		addedClassIcon := (self defaultClassIcon asFormOfDepth: 32)
			mergeBottomRightWith: (Form 
				fromBinaryStream: (Base64MimeConverter 
					mimeDecodeToBytes: Smalltalk ui icons overlayAddIconContents readStream)) ].