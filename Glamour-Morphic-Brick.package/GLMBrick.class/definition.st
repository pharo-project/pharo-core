GLMBrickedMorph subclass: #GLMBrick
	uses: GLMBrickPropertiesTrait + GLMBrickLayoutTrait + GLMBrickStructureTrait + (GLMBrickGeometryTrait - {#privateBounds:})
	instanceVariableNames: 'brickBounds brickApi'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Glamour-Morphic-Brick-Widgets-Core'