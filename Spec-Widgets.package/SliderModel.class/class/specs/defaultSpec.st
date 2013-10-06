defaultSpec
	<spec>
	
	^ SpecLayout slider
		send: #model: withArguments: #( model );
		send: #getValueSelector: withArguments: #(value);
		send: #setValueSelector: withArguments: #( value: );
		send: #value: withArguments: #(#(model absoluteValue));
		send: #getLabelSelector: withArguments: #( label );
		send: #max: withArguments: #(#(model max));
		send: #min: withArguments: #(#(model min));		
		send: #quantum: withArguments: #(#(model quantum));
		send: #borderWidth: withArguments: #(#(model borderWidth));
		send: #borderColor: withArguments: #(#(model borderColor));
		send:#setBalloonText: withArguments:	#(#(model help));
		send: #vSpaceFill;
		send: #hSpaceFill;
		yourself