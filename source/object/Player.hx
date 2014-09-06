package object;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;

/**
 * ...
 * @author Happy Games
 */
class Player extends FlxSprite
{
	private var _speed:Int = 30;
	private var _angleSpeed:Float = Math.PI / 2;
	private var _backgroundPlay:FlxSprite;
	
	private var _color:Int;
	
	private var _keys:Array<String>;
	
	public function new(back:FlxSprite, color:Int, keys:Array<String>) 
	{
		super();
		this.makeGraphic(4, 4);
		this._color = color;
		_backgroundPlay = back;
		_keys = keys;
		
		this.randomPos();
	}
	
	public function randomPos() {
		this.x = Math.random() * 800;
		this.y = Math.random() * 600;
	}
	
	override public function update() {
		super.update();
		
		
		if (FlxG.keys.anyPressed([ _keys[0] ])) {
			this.set_angle( this.angle+this._angleSpeed );
		}
		if (FlxG.keys.anyPressed([ _keys[1] ])) {
			this.set_angle( this.angle-this._angleSpeed );
		}
		this.velocity.set(this._sinAngle * this._speed, this._cosAngle * this._speed);

		//FlxSpriteUtil.drawCircle(_backgroundPlay, this.x + (this.width / 2), this.y + (this.height / 2), 2, this._color);
		FlxSpriteUtil.drawRect(_backgroundPlay, this.x, this.y, this.width, this.height, this._color);
	}
	
}