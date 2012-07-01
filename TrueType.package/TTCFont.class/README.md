I represent a font that uses TrueType derived glyph.  Upon a request for glyph for a character through a call to #formOf: (or #widthOf:), I first search corresponding glyph in the cache.  If there is not, it creates a 32bit depth form with the glyph.

  The cache is weakly held.  The entries are zapped at full GC.

Structure:
 ttcDescription	TTFontDescription -- The system data structure for a TrueType font data file.
 pointSize		Number -- Nominal Em size in points. Conversion to pixel sizes depends on the definition of TextStyle class>>pixelsPerInch.
 foregroundColor	Color -- So far, this font need to know the glyph color in cache.
 cache			WeakArray of <Color -> <Array(256) of glyph>>
 derivatives		Array -- stores the fonts in the same family but different emphasis.
