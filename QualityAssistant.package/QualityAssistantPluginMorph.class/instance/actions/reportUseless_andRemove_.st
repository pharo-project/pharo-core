reportUseless: aReCritic andRemove: anIconicButton
	anIconicButton
		label: 'Thanks!';
		height: 14;
		color: (Color green alpha: 0.1);
		actionSelector: #yourself;
		arguments: #().
	
	[ aReCritic reportUselessness ] fork.
	[
	2 seconds asDelay wait.
	anIconicButton delete ] fork.