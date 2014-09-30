render: aBrowser
	|pagerModel|
	pagerModel := GLMPagerModel new
		isDependenciesShown: false.
	
	aBrowser scrollButtonIconRenderBlock ifNotNil: [
		"result value of the block is raw icon of the Form class"
		pagerModel scrollButtonIconRenderBlock: [ :index | aBrowser scrollButtonIconRenderBlock cull: ((aBrowser panes at: index) port: #entity) value ]
	].
	
	container := GLMPagerMorph new
		name: 'scroller';
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		pagerModel: pagerModel;
		beTransparent;
		yourself.

	"container maxPanes: aBrowser fixedSizePanes."
	self registerAnnouncementsFor: aBrowser.  
	aBrowser panes
		do: [ :each | container pushPane: (self renderObject: each) ].
	^ container