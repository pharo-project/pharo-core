buildLabel: text withIcon: icon
	
	icon ifNil: [ ^ text ].
	
	^ IconicListItem 
		text: text 
		icon: icon
