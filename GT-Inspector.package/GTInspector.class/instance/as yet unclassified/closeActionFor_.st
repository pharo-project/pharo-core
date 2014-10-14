closeActionFor: aPresentation

	^ GLMGenericAction new
			action: [ self removeLastPane ];
			icon: GLMUIThemeExtraIcons glamorousCancel ;
			condition: [ :currentPresentation |
				self panes size > 1 and: [ self panes last presentations = currentPresentation ] ];
			title: 'Close' 