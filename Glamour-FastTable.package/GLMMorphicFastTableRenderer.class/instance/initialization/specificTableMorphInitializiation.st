specificTableMorphInitializiation
	| presentation |
	super specificTableMorphInitializiation.
	presentation := tableModel glamourPresentation.
	tableMorph
		columns:
			(presentation columns
				collect:
					[ :each | 
					GLMFastTableColumn new
						id: (presentation titleValueOfColumn: each);
						width: each width;
						glamourColumn: each;
						target: tableModel actionSelector: #sortByColumn: arguments: {each};
						yourself ])