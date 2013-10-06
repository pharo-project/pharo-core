fromString: aString 
  "Answer an instance of me whose characters are those of the argument, aString."

  | defaultFontStyle fontNumber |

  defaultFontStyle := TextStyle default.
  fontNumber := defaultFontStyle ifNil: 1 ifNotNil: [defaultFontStyle defaultFontIndex].

  ^ self
    string: aString
    attributes:{
      (TextFontChange fontNumber: fontNumber).
      ( TextColor color: Color black ) 
      }
