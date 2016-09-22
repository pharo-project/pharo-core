version2126: spec
	<version: '2.12.6' imports: #('1.0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'merge'.
		spec author: 'MarcusDenker'.
		spec timestamp: '22 September 2016'.
		spec 
			package: 'TxText-Model' with: 'TxText-Model-MarcusDenker.67';
			package: 'TxTextTests-Model' with: 'TxTextTests-Model-SeanDeNigris.29';
			package: 'TxText-Athens' with: 'TxText-Athens-EstebanLorenzano.58';
			package: 'TxText-AthensTests' with: 'TxText-AthensTests-SeanDeNigris.10';
			package: 'TxText-Styler' with: 'TxText-Styler-HenrikNergaard.18';
			package: 'Tool-TxWorkspace' with: 'Tool-TxWorkspace-NicolaiHess.7'. ].
