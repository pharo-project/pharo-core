defaultSpec
	<spec>
	
	^ SpecLayout new
		type: #TabManager;
		send: #setTabs: withArguments: #(#(model getTabs));
		send: #when:send:to: withArguments: #(tabSelected tabSelected: model);
		send: #vSpaceFill;
		send: #hSpaceFill;
		yourself