drawing - background
drawBackgroundForItem: item at: index on: aCanvas

	(self isSelectedIndex: index)
		ifTrue: [ self drawSelectedBackgroundForItem: item at: index on: aCanvas ]
		ifFalse: [ 
			(self isSecondSelectedIndex: index)
				ifTrue: [ self drawSecondSelectedItem: item at: index on: aCanvas ]
				ifFalse: [ self drawDefaultBackgroundForItem: item at: index on: aCanvas ] ].
			
	(self isPotentialDrop: index)
		ifTrue: [ self drawPotentialDropBackroundForItem: item at: index on: aCanvas ].
		
	self drawMouseDownBackgroundFor: item at: index on: aCanvas