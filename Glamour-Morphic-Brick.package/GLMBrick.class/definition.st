GLMBrickedMorph subclass: #GLMBrick
	uses: GLMBrickPropertiesTrait + GLMBrickLayoutTrait + GLMBrickStructureTrait + GLMPhlowTrait + (GLMBrickGeometryTrait - {#privateBounds:})
	instanceVariableNames: 'brickBounds ports'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Glamour-Morphic-Brick-Widgets-Core'