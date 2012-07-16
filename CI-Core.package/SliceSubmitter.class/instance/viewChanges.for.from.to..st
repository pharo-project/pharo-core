protocol
viewChanges: patch for: workingCopy from: fromDescription to: toDescription
	"Open a browser on the given patch."
	| morph |

	morph := (PSMCPatchMorph forPatch: patch)
						fromDescription: fromDescription;
						toDescription: toDescription;
						vResizing: #spaceFill;
						hResizing: #spaceFill;
						yourself.
						
	^ MorphEmbedder new
			title: ('Changes to {1}' translated format: {fromDescription});
			morph: morph;
			yourself 