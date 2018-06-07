package;

import kha.Font;
import kha.Framebuffer;

import kha.Assets;
import kha.Image;
import kha.Color;

class Project {
	private var font:Font;
	private var binit:Bool = false;
	private var image:Image;
	
	public function new() {
		//Assets.loadImage();
		//image = Assets.images.PixelMeComputer;
		Assets.loadFont('champagneLimousines', onFontLoad);
		Assets.loadImage('PixelMeComputer', onImageLoad);
		//this.image = Assets.images.PixelMeComputer;
	}
	private function onImageLoad(image:Image):Void{
		//this.image = image;
		this.image = Assets.images.PixelMeComputer;
	}
	
	private function onFontLoad(font:Font):Void{
		this.font = font;
		this.binit = true;
	}

	public function update(): Void {
		//trace('this is our update');
	}

	public function render(framebuffer: Framebuffer): Void {
		//trace('this is our render');
		if(binit == false){
			return;
		}
		//framebuffer.g2.begin();
		//framebuffer.g2.drawImage(image,30,30);
		//framebuffer.g2.end();
		
		var g = framebuffer.g2;
		g.begin();
		g.font = font;
		g.fontSize = 32;
		//g.color = Color.Pink;
		g.drawString("Hello World",0,0);
		//g.drawImage(image,30,30);
		g.drawImage(Assets.images.PixelMeComputer,30,30);
		g.end();
		
	}
}
