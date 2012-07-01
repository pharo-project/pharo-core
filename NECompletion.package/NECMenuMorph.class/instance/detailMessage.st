drawing
detailMessage
	^ detailMorph
		ifNil: ['ctrl-h=help | -> open detail']
		ifNotNil: ['ctrl-h=help | <- close detail']