version213: spec
	<version: '2.13' imports: #('1.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Remove test classes which are not in use.'.
		spec author: 'HenrikNergaard'.
		spec timestamp: '10/29/2016 00:00'.
		spec 
			package: 'TxText-Model' with: 'TxText-Model-MarcusDenker.67';
			package: 'TxTextTests-Model' with: 'TxTextTests-Model-SeanDeNigris.29';
			package: 'TxText-Athens' with: 'TxText-Athens-EstebanLorenzano.58';
			package: 'TxText-AthensTests' with: 'TxText-AthensTests-HenrikNergaard.13';
			package: 'TxText-Styler' with: 'TxText-Styler-HenrikNergaard.18';
			package: 'Tool-TxWorkspace' with: 'Tool-TxWorkspace-NicolaiHess.7'. ].
