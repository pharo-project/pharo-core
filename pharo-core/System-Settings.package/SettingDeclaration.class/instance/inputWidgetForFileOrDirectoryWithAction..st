user interface
inputWidgetForFileOrDirectoryWithAction: aSymbol
	^  self theme  newRowIn: World for: {
					(EditableDropListMorph
						on: self
						list: #list
						selected: #index
						changeSelected: #index:
						useIndex: true 
						addToList: #addToList:
						class: String
						getEnabled: #enabled
						default: self defaultValue)
						ghostText: self ghostHelp;
						hResizing: #rigid;
						width: 450;
						wantsFrameAdornments: true;
						yourself.
					(  self theme  
						newButtonIn: World
						for: self
						getState: nil
						action: aSymbol
						arguments: nil
						getEnabled: nil
						label:  (AlphaImageMorph new image:  self theme  smallOpenIcon)
						help: 'Open directory chooser dialog' translated)
					}
					