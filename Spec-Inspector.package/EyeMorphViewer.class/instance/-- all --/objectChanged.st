objectChanged
	| newThumbnail |
	
	newThumbnail := self thumbnailMorph.
	newThumbnail when: #extent send: #resize: to: newThumbnail.
	self text doItReceiver: self object. 
	self container morph removeAllMorphs.
	self container morph
		addMorph: newThumbnail
		fullFrame: LayoutFrame identity