example
	SelectEntity new
		selectDialog: [ NewListModel new items: #(Henrik Peter); yourself];
		displaySymbol: #asString;
		ghostText: 'Names';
		possibleEntities: [#(Diego Stephan Norbert Stephane Marcus Torsten Sven Sean) sorted];
		openDialogWithSpec 
