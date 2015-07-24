spotterPreviewIn: aComposite
	<spotterPreview: 10>
	
	aComposite table
		title: 'Details';
		display: [ :anObject |
			{ 
				'Name' -> self name.
				'Package name' -> self packageName.
				'Repository URL' -> self repositoryUrl } ];
		column: 'Detail'
			evaluated: #key
			styled: [ :aBrick | aBrick textPosition: #rightCenter; margin: #(0 15 0 0); textColor: Color lightGray; height: 30 ];
		column: 'Value'
			evaluated: #value
			styled: [ :aBrick | aBrick margin: #(0 0 0 15); height: 30 ];
		entity: self.