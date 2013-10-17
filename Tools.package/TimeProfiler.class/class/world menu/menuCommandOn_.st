menuCommandOn: aBuilder 
	<worldMenu>
	(aBuilder item: #'Time Profiler')
		parent: #Tools;  
		icon: self taskbarIcon;
		action: [TimeProfiler new open]