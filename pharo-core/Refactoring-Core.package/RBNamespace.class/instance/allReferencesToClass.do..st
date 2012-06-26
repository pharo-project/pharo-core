accessing
allReferencesToClass: aRBClass do: aBlock 
	self allClassesDo: 
			[:each | 
			(each whichSelectorsReferToClass: aRBClass) 
				do: [:sel | aBlock value: (each methodFor: sel)]]