addDiveInActionButton

	(self stepModel canDiveIn: self candidate) ifTrue: [ 
		self actionbarBrick addActionButton: (
			self newActionButtonBrick
				icon: GLMUIThemeExtraIcons glamorousRight;
				addUpAction: [ self beSelected. self stepModel diveIn ];
				yourself) ].