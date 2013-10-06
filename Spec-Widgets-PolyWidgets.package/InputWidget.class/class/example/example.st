example
	| widget |
	
	widget := self new.
	widget
		title: 'Name';
		label: 'What''s your name?';
		ghostText: 'John Doe'.

	World openModal: widget openDialogWithSpec window.

	widget value