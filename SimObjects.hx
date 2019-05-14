package;

//Haxe Imports
import Assertion.*;

//Flixel Imports
import flixel.FlxSprite;


class DynamicSpriteObject extends FlxObject
{
    var spriteArray: Array<FlxSprite>; 
    var speed: Int; 

    public function new(spriteArray:Array<FlxSprite>, speed:Int, x, y, width, height)
    {
        this.spriteArray = spriteArray;
        this.speed = speed;
        super(x,y,width,height);
    }
}

class EnemyLine extends DynamicSpriteObject
{
    var HeightInTiles: Int; // Each integer represents a tile size
    var tileSize: Int;

    public function new(heightInTiles:Int = 1; startingTile:Int = 0; objSpeed:Int = 10)
    {
        assert(heightInTiles > 0, "A line must be at least 1 tile in height");

        this.tileSize = 48;
        var sizeX = tileSize*1; 
        var sizeY = tileSize*heightInTiles; 
        var startingHeight = tileSize*startingTile; 
        
        var spriteArray: Array<FlxSprite>; 

        super(spriteArray, objSpeed, startingHeight, 768, sizeX, sizeY); // Should make 768 a constant somehow

        generateSprites();
    }

    private function generateSprites()
    {
        for (i in 0...heightInTiles)
        {
            var soldier = new FlxSprite();
            soldier.loadGraphic(AssetPaths.BritishSoldiers__png);
            soldier.x = 333; //temporary
            soldier.y = (startingTile*tileSize) + (i*tileSize);
            spriteArray.push(new FlxSprite(AssetPaths.BritishSoldiers__png));

            if (i < heightInTiles - 1)
            {
                var soldier2 = new FlxSprite();
                soldier.loadGraphic(AssetPaths.BritishSoldiers__png);
                soldier.x = 333; //temporary
                soldier.y = (startingTile*tileSize) + (i*tileSize) + tileSize/2; // Add another soldier at the halfway mark
                spriteArray.push(new FlxSprite(AssetPaths.BritishSoldiers__png));
            }
        }
    }

    public function recycle(HeightInTiles:Int = 1; startingTile:Int = 0, speed:Int = 10)
    {
        // Nothing yet
    }
}

class ObjectiveArtillery extends DynamicSpriteObject
{

}

class PlayerObject extends FlxSprite
{
    
}