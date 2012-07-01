shortcuts
buildSmalltalkEditorCtrlBasedKeymappingsOn: aBuilder
	(aBuilder shortcut: #browseIt1) 
		category: #SmalltalkEditor
		default: $b command
		do: [ :morph | morph browseIt ].
	
	(aBuilder shortcut: #browseIt2) 
		category: #SmalltalkEditor
		default: $b ctrl
		do: [ :morph | morph browseIt ].
				
	(aBuilder shortcut: #doIt1) 
		category: #SmalltalkEditor
		default: $d command
		do: [ :morph | morph doIt ].
	
	(aBuilder shortcut: #doIt2) 
		category: #SmalltalkEditor
		default: $d ctrl
		do: [ :morph | morph doIt ].
		
	(aBuilder shortcut: #inspectIt1) 
		category: #SmalltalkEditor
		default: $i command
		do: [ :morph | morph inspectIt ].
	
	(aBuilder shortcut: #inspectIt2) 
		category: #SmalltalkEditor
		default: $i ctrl
		do: [ :morph | morph inspectIt ].
		
	(aBuilder shortcut: #implementorsOfIt1) 
		category: #SmalltalkEditor
		default: $m command
		do: [ :morph | morph implementorsOfIt ].

	(aBuilder shortcut: #implementorsOfIt2) 
		category: #SmalltalkEditor
		default: $m ctrl
		do: [ :morph | morph implementorsOfIt ].
		
	(aBuilder shortcut: #sendersOfIt1)
		category: #SmalltalkEditor
		default: $n command
		do: [ :morph | morph sendersOfIt ].

	(aBuilder shortcut: #sendersOfIt2) 
		category: #SmalltalkEditor
		default: $n ctrl
		do: [ :morph | morph sendersOfIt ].

	(aBuilder shortcut: #printIt1) 
		category: #SmalltalkEditor
		default: $p command
		do: [ :morph | morph printIt ].
		
	(aBuilder shortcut: #printIt2) 
		category: #SmalltalkEditor
		default: $p ctrl
		do: [ :morph | morph printIt ].