spotterTraitUsersFor: aStep
	<spotterOrder: 20>
	aStep listProcessor
			title: 'Users';
			allCandidates: [ self traitUsers asArray ];
			itemIcon: #systemIcon;
			filter: GTFilterSubstring