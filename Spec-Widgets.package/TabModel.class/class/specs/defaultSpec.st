defaultSpec
	<spec>
	
	^ SpecLayout new
		type: #Tab;
		send: #label: withArguments: #(#(model label));
		send: #icon: withArguments: #(#(model icon));
		send: #retrievingBlock: withArguments: #(#(model retrievingBlock));
		send: #morph: withArguments: #(#(model morph));
		send: #menu: withArguments: #(#(model menu));
		send: #closeable: withArguments: #(#(model closeable));
		send: #setActionsFrom: withArguments: #(#(model actionsBlock));
		send: #when:send:to: withArguments: #(tabSelected tabSelected model);
		yourself