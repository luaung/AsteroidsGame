Spaceship ship = new Spaceship();
//your variable declarations here

public void setup() 
{
	size(1000,1000);
	ship.setX(500);
	ship.setY(500);
}
public void draw() 
{
	background(255);
	ship.show();
	ship.move();
}

public void keyPressed(){
	if(key == 'w'){
		ship.accelerate(0.1);
	}
	if(key == 'a'){
		ship.turn(-5);
	}
	if(key == 'd'){
		ship.turn(5);
	}
	if(key == 's'){
		ship.accelerate(-0.1);
	}
}

