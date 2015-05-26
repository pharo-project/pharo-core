dashboardWithSpecificExtents

	<glmBrowser: 'Dashboard specifying extents' input: '42'>
	"self new dashboardWithSpecificExtents openOn: 42"
	
	|tmpBrowser|
	tmpBrowser := GLMDashboard new.
	tmpBrowser rigidStrategy.
	tmpBrowser addPaneNamed: #first extent: 300@200.
	tmpBrowser addPaneNamed: #second extent: 200@200.
	tmpBrowser addPaneNamed: #third extent: 200@300.
	tmpBrowser addPaneNamed: #fourth extent: 300@300.
	tmpBrowser addPaneNamed: #fifth extent: 150@350.
	
	tmpBrowser transmit to: #first; andShow: [:a |
		a list
			display: [:i | #(a b c d e)];
			yourself
		].
	tmpBrowser transmit to: #second; andShow: [:a |
		a list
			display: [:i | #(a b c d e)]
		].
	tmpBrowser transmit to: #third; andShow: [:a |
		a list
			display: [:i | #(a b c d e)]
		].
	tmpBrowser transmit to: #fourth; andShow: [:a |
		a list
			display: [:i | #(a b c d e)]
		].
	tmpBrowser transmit to: #fifth; andShow: [:a |
		a list
			display: [:i | #(a b c d e)]
		].
	^ tmpBrowser