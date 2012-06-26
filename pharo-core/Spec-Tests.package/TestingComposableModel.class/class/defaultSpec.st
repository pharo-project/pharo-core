specs
defaultSpec
	<spec>

	^ SpecLayout list
		send: #model: withArguments: {#model};
		yourself