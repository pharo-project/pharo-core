initialize
initializeWindow
	"Create the window"
	
	| leftPanel tabs |
	window := StandardWindow new.
	window title: 'Browser on ', self pharoDistribution.
	leftPanel := PanelMorph new changeTableLayout.		
	tabs := TabGroupMorph new hResizing: #spaceFill; vResizing: #spaceFill.				
	leftPanel addMorph: tabs.
	window 
		addMorph: leftPanel
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0 @ 0)).		

	trustedTree := PluggableTreeMorph new.
	tabs addPage: trustedTree label: 'Configurations'.		
	trustedTree 
		model: self; 
		setSelectedSelector: #onTrustedSelected:;
		getMenuSelector: #configurationMenu:.
		
	window 
		addMorph: trustedTree 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0@1) offsets: (0@0 corner: 0 @ 0)).		
	tabs selectedPageIndex: 1.
	
	untrustedTree := PluggableTreeMorph new.
	tabs addPage: untrustedTree label: 'Untrusted'.		
	untrustedTree 
		model: self; 
		setSelectedSelector: #onUntrustedSelected:;
		getMenuSelector: #configurationMenu:.
		
	window 
		addMorph: untrustedTree 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0@1) offsets: (0@0 corner: 0 @ 0)).		
	tabs selectedPageIndex: 1.									