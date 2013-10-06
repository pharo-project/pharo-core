defaultSpec
	<spec>
	
	^ SpecLayout new
		type: #TabManager;
		send: #model: withArguments: #(#(model));
		send: #setTabs: withArguments: #(#(model getTabs));
		send: #when:send:to: withArguments: #(tabSelected selectedTab: model);
		send: #vResizing: withArguments: #(spaceFill);
		send: #hResizing: withArguments: #(spaceFill);
		yourself