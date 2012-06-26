private
growFile: path to: anInteger
	^ self
		replaceFile: path
		in: [ :bytes | 
			(bytes class new: anInteger)
				replaceFrom: 1
					to: bytes size
					with: bytes
					startingAt: 1;
				yourself ]