parsing
parseAuthority: stream
	| hostString |
	(hostString := stream upTo: $:) isEmpty 
		ifFalse: [  
			self host: (ZnResourceMetaUtils decodePercent: hostString) ].
	stream atEnd 
		ifFalse: [ 
			self port: (Integer readFrom: stream ifFail: [ ZnPortNotANumber signal ]) ]