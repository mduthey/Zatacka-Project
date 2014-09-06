package ;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import object.Player;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
	
	var _background:FlxSprite;
	var _player: Player;
	var _player2: Player;
	/**
	 * Function that is called up when to state is created to set it up.
	 */
	override public function create():Void
	{
		super.create();
		
		_background = new FlxSprite();
		_background.makeGraphic(800, 600, FlxColor.BLACK);
		
		this.add(_background);
		
		_player = new Player(_background, FlxColor.RED, ["A", "D"]);
		this.add(_player);
		
		_player2 = new Player(_background, FlxColor.GREEN, ["J", "L"]);
		this.add(_player2);
	}

	/**
	 * Function that is called when this state is destroyed - you might want to
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
		_player.update();
		_player2.update();
	}
}