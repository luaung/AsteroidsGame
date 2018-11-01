Spaceship ship = new Spaceship();
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;

public void setup() 
{
	size(1000,1000);
	ship.setX(500);
	ship.setY(500);
}
public void draw() 
{
	background(0);
	ship.show();
	ship.move();

	if(wPressed == true){
		ship.accelerate(.1);
	}
	if(sPressed == true){
		ship.accelerate(-.1);

	}
	if(aPressed == true){
		ship.turn(-7);
	}
	if(dPressed == true){
		ship.turn(7);
	}
}

public void keyPressed(){
	if(key == 'w'){
		wPressed = true;
	}
	if(key == 'a'){
		aPressed = true;
	}
	if(key == 'd'){
		dPressed = true;
	}
	if(key == 's'){
		sPressed = true;
	}
}

public void keyReleased(){
	if(key == 'w'){
		wPressed = false;
	}
	if(key == 'a'){
		aPressed = false;
	}
	if(key == 'd'){
		dPressed = false;
	}
	if(key == 's'){
		sPressed = false;
	}
}
