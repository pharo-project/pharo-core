listSelectItem: anObject 
	| selection |
	
	selection := anObject asNautilusSelection.
	list model 
		expandAllFromNode: selection nodePath first;
		selectItems: { selection item }.
	list scrollSelectionIntoView.