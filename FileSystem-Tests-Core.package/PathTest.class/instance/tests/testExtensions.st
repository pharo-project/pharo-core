testExtensions
	self assert: (Path from: 'foo') extensions asArray equals: #().
	self assert: (Path from: 'foo.tar') extensions asArray equals: #( 'tar' ).
	self assert: (Path from: 'foo.tar.gz') extensions asArray equals: #( 'tar' 'gz').
	self assert: (Path from: 'foo.1.tar.gz') extensions asArray equals: #( '1' 'tar' 'gz').