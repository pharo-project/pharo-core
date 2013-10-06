newImage: aForm
	"Use aForm as the new popupImage and update the thumbnail image."
	
	imagePopupMorph 
		ifNil: [ imagePopupMorph :=   aForm asMorph]
		ifNotNil: [ imagePopupMorph form: aForm ].
	self newThumbnail: aForm
		
		