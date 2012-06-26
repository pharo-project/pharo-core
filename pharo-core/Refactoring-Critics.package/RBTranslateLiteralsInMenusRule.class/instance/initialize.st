initialization
initialize
	super initialize.
	self rewriteRule
		replace: '`@menu add: `#label action: `#sym'
			with: '`@menu add: `#label translated action: `#sym';
		replace: '`@menu add: `#label selector: `#sym arguments: `@stuff'
			with: '`@menu add: `#label translated selector: `#sym arguments: `@stuff';
		replace: '`@menu add: `#label subMenu: `@stuff'
			with: '`@menu add: `#label translated subMenu: `@stuff';
		replace: '`@menu add: `#label subMenu: `@stuff target: `@targ selector: `#sel argumentList: `@args'
			with: '`@menu add: `#label translated subMenu: `@stuff target: `@targ selector: `#sel argumentList: `@args';
		replace: '`@menu add: `#label target: `@targ action: `#sel'
			with: '`@menu add: `#label translated target: `@targ action: `#sel';
		replace: '`@menu add: `#label target: `@targ selector `#sel'
			with: '`@menu add: `#label translated target: `@targ selector `#sel';
		replace: '`@menu add: `#label target: `@targ selector `#sel argument: `@arg'
			with: '`@menu add: `#label translated target: `@targ selector `#sel argument: `@arg';
		replace: '`@menu add: `#label target: `@targ selector `#sel arguments: `@arg'
			with: '`@menu add: `#label translated target: `@targ selector `#sel arguments: `@arg';
		replace: '`@menu addTitle: `#label'
			with: '`@menu addTitle: `#label translated';
		replace: '`@menu addTitle: `#label updatingSelector: `#sel updateTarget: `@targ'
			with: '`@menu addTitle: `#label translated updatingSelector: `#sel updateTarget: `@targ';
		replace: '`@menu addWithLabel: `#label enablement: `#esel action: `#sel'
			with: '`@menu addWithLabel: `#label translated enablement: `#esel action: `#sel';
		replace: '`@menu addWithLabel: `#label enablementSelector: `#esel target: `@targ selector: `#sel argumentList: `@args'
			with: '`@menu addWithLabel: `#label translated enablementSelector: `#esel target: `@targ selector: `#sel argumentList: `@args';
		replace: '`@menu balloonTextForLastItem: `#label'
			with: '`@menu balloonTextForLastItem: `#label translated';
		replace: '`@menu labels: `#lit lines: `@lines selections: `@sels'
			with: '`@menu labels: (`#lit collect: [ :l | l translated ]) lines: `@lines selections: `@sels';
		replace: '`@menu title: `#title'
			with: '`@menu title: `#title translated'