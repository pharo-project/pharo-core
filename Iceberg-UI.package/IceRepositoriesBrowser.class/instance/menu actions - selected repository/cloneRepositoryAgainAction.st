cloneRepositoryAgainAction
	^ GLMGenericAction new
		selectionAction: #restore;
		selectionCondition: #isMissing;
		showTitle: 'Clone repository again';
		shortcut: $R;
		yourself
