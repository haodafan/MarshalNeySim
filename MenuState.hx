package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class MenuState extends FlxState
{

    var _btnPlay:FlxButton;
    
    function clickPlay():Void
    {
        FlxG.switchState(new PlayState());
    }

	override public function create():Void
	{

        // PLAY BUTTON
        _btnPlay = new FlxButton(0, 0, "Play", clickPlay);
        _btnPlay.screenCenter();
        add(_btnPlay);

		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
