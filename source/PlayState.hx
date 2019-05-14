package;

import flixel.FlxG; 
import flixel.FlxSprite;
import flixel.FlxState; 
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import flixel.input.keyboard.FlxKey;

class PlayState extends FlxState
{
	// SPRITES
	var marshalNeySprite:FlxSprite;

	// KEY BINDINGS
	var keyMoveUp = [FlxKey.UP, FlxKey.W];
	var keyMoveDown = [FlxKey.DOWN, FlxKey.S];

	override public function create():Void
	{
		super.create();

		// Create SPRITES
		// Marshal Ney Sprite 
		marshalNeySprite = new FlxSprite();
		marshalNeySprite.loadGraphic(AssetPaths.aoehorse__png);
		marshalNeySprite.x = 100;
		marshalNeySprite.y = 192;
		add(marshalNeySprite);

	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

		// Controls 
		if (FlxG.keys.anyPressed(keyMoveUp))
		{
			marshalNeySprite.y -= 10; 
		}
		else if (FlxG.keys.anyPressed(keyMoveDown))
		{
			marshalNeySprite.y += 10;
		}
	}
}
