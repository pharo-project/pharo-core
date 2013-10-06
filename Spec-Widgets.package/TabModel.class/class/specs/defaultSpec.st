defaultSpec
	<spec>
	
	^ SpecLayout new
		type: #Tab;
		send: #label: withArguments: #(#(model label));
		send: #icon: withArguments: #(#(model icon));
		send: #retrievingBlock: withArguments: #(#(model retrievingBlock));
		send: #closeable: withArguments: #(#(model closeable));
		send: #morph: withArguments: #(#(model morph));
		send: #menu: withArguments: #(#(model menu));
		send: #setActionsFrom: withArguments: #(#(model actionsBlock));
		yourself