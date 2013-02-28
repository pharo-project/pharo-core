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
		fullFrame: LayoutFrame identity.		

	trustedTree := PluggableTreeMorph new.
	tabs addPage: trustedTree label: 'Verified'.		
	trustedTree 
		model: self; 
		setSelectedSelector: #onTrustedSelected:;
		getMenuSelector: #configurationMenu:.
		
	window 
		addMorph: trustedTree 
		fullFrame: (0@0 corner: 0@1) asLayoutFrame.		
	tabs selectedPageIndex: 1.
	
	untrustedTree := PluggableTreeMorph new.
	tabs addPage: untrustedTree label: 'Unverified'.		
	untrustedTree 
		model: self; 
		setSelectedSelector: #onUntrustedSelected:;
		getMenuSelector: #configurationMenu:.
		
	window 
		addMorph: untrustedTree 
		fullFrame: (0@0 corner: 0@1) asLayoutFrame.		
	tabs selectedPageIndex: 1.								