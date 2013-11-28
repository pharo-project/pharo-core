deletedClassIcon

	^ deletedClassIcon ifNil: [ 
		deletedClassIcon :=  (self defaultClassIcon asFormOfDepth: 32)
			mergeBottomRightWith: (Form 
				fromBinaryStream: (Base64MimeConverter 
					mimeDecodeToBytes: Smalltalk ui icons overlayRemoveIconContents readStream))  ].