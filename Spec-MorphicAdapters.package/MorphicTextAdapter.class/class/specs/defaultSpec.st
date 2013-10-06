defaultSpec
	<spec>
	
	^ SpecLayout new
			type: #PluggableTextMorph;
			send: #color: withArguments: #(#(model color));
			send: #classOrMetaClass: withArguments: {#(model behavior)};
			send: #on:text:accept:readSelection:menu: withArguments: #(model getText accept:notifying: readSelection codePaneMenu:shifted:);
			send: #enabled: withArguments: {#(model enabled)};
			send: #borderWidth: withArguments: #(#(model borderWidth));
			send: #borderColor: withArguments: #(#(model borderColor));
			send:#setBalloonText: withArguments:	{ #(model help)};
			send: #dragEnabled: withArguments: #(#(model dragEnabled));
			send: #dropEnabled: withArguments: #(#(model dropEnabled));
			send: #registerScrollChanges: withArguments: #(scrollValueChanged:);
			send: #vResizing: withArguments: #(spaceFill);
			send: #hResizing: withArguments: #(spaceFill);
			yourself