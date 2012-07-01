This is a font provider for true type fonts. You can use it to add TTF files to your image:

FreeTypeFontProvider current 
        updateFromFileEntry: 
                (FileDirectory default entryAt: 'UnDotum.ttf') 
        directory:  FileDirectory default 
        locationType: #imageRelative. 
FreeTypeFontProvider current buildFamilies. 
FreeTypeFontSelectorDialogWindow new open.
StandardFonts balloonFont: 
        (LogicalFont familyName: 'UnDotum'  pointSize: 10). 
StandardFonts defaultFont: 
        (LogicalFont familyName: 'UnDotum'  pointSize: 14).