menu
finderMenuOn: aBuilder 
	"I build a menu"
	<worldMenu>
	(aBuilder item: 'Critic Browser')
		action: [SelectPackageBrowser open];
		order: 0;
		parent: #Tools;
		help: 'To manage rule checks';
		icon: self icon