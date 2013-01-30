shortcuts
buildSmalltalkEditorKeymappingsOn: aBuilder
	<keymap>
	(aBuilder shortcut: #browseIt)
		category: #SmalltalkEditor
		default: $b command mac | $b ctrl win | $b ctrl unix
		do: [ :morph | morph browseIt ].
					
	(aBuilder shortcut: #doIt) 
		category: #SmalltalkEditor
		default: $d command mac | $d ctrl win | $d ctrl unix
		do: [ :morph | morph doIt ].
			
	(aBuilder shortcut: #inspectIt) 
		category: #SmalltalkEditor
		default: $i command mac | $i ctrl win | $i ctrl unix
		do: [ :morph | morph inspectIt ].
		
	(aBuilder shortcut: #implementorsOfIt) 
		category: #SmalltalkEditor
		default: $m command mac | $m ctrl win | $m ctrl unix
		do: [ :morph | morph implementorsOfIt ].
		
	(aBuilder shortcut: #sendersOfIt)
		category: #SmalltalkEditor
		default: $n command mac | $n ctrl win | $n ctrl unix
		do: [ :morph | morph sendersOfIt ].
		
	(aBuilder shortcut: #printIt) 
		category: #SmalltalkEditor
		default: $p command mac | $p ctrl win | $p ctrl unix
		do: [ :morph | morph printIt ].