exampleBasic
	|pager adapter|
	adapter := GLMPagerModel new.
	pager :=	GLMPagerMorph new.
	pager pagerModel: adapter.
	
	pager pushPane: (Morph new color: Color red).
	pager pushPane: (Morph new color: Color green).
	pager pushPane: (Morph new color: Color yellow).
	pager pushPane: (Morph new color: Color blue).
	pager pushPane: (Morph new color: Color pink).
	
	pager height: 600.
	pager width: 1024.
	pager openInWindow.
	
	"pager inspect."