synchronizeRepositoryAction
	^ GLMGenericAction new
		selectionAction: #synchronize;
		selectionCondition: #isOperative;
		icon: #glamorousBrowse asIcon;
		shortcut: $s;
		title: 'Synchronize repository...'; showTitle