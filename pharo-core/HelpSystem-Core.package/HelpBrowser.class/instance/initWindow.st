ui
initWindow 
	| toolbar dock|
	window := (Smalltalk at: #StandardWindow) new.
	window model: self.
	
	window title: 'Help Browser'.
	toolbar := window newToolbar: {window
			newButtonFor: self
			getState: nil
			action: #refresh
			arguments: nil
			getEnabled: nil
			labelForm: (HelpIcons iconNamed: #refreshIcon)
			help: 'Refresh' translated.
			}.
			
	dock := window newToolDockingBar.	
	dock addMorphBack: toolbar.
	window
			addMorph: dock
			fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0 @ dock minExtent y)).
	"Tree"
	treeMorph := PluggableTreeMorph new.
	treeMorph model: self; setSelectedSelector: #onItemClicked:.
	window 
		addMorph: treeMorph 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0.3@1) offsets: (0@dock minExtent y corner: 0 @ 0)).

	"Text"
	contentMorph := self defaultViewerClass on: self 
			text: nil accept: nil
			readSelection: nil menu: nil.
	window addMorph: contentMorph fullFrame: (LayoutFrame fractions: (0.3@0 corner: 1@1) offsets: (0@dock minExtent y corner: 0 @ 0)).
	 	