modifiedClassIcon

	^ modifiedClassIcon ifNil: [ 
		modifiedClassIcon :=  (self defaultClassIcon asFormOfDepth: 32)
			mergeBottomRightWith: (Form 
				fromBinaryStream: (Base64MimeConverter 
					mimeDecodeToBytes: Smalltalk ui icons overlayModificationIconContents readStream)) ].