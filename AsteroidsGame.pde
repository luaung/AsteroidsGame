Spaceship ship = new Spaceship();
Star[] sky = new Star[400];
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;


ArrayList <Bullet> bullet = new ArrayList <Bullet>();

public void setup() 
{
	size(1000,1000);
	ship.setX(500);
	ship.setY(500);
	for(int i = 0; i< sky.length; i++){
		sky[i] = new Star();
	}
	for(int i=0; i<20; i++){
		ast.add(new Asteroid());
	}


}
public void draw() 
{
	background(0);
	for(int i = 0; i< sky.length; i++){
		sky[i].show();
	}

	for(int i=0; i<ast.size(); i++){
		ast.get(i).move();
		ast.get(i).show();
		float d = dist(ship.getX(),ship.getY(),ast.get(i).getX(),ast.get(i).getY());
		if (d < 20)
			ast.remove(i);
	}

	for(int i=0; i<bullet.size(); i++){
		for(int a=0; a<ast.size(); a++){
			if(dist(bullet.get(i).getX(),bullet.get(i).getY(),ast.get(a).getX(),ast.get(a).getY()) < 20){
				ast.remove(a);
				bullet.remove(i);
				break;
			}

		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getX() >= 1000 || bullet.get(i).getX() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(int i=0; i<bullet.size(); i++){
		if(bullet.get(i).getY() >= 1000 || bullet.get(i).getY() <= 0){
			bullet.remove(i);
			break;
		}
	}

	for(Bullet bull: bullet){
		bull.move();
		bull.show();
	}


	ship.show();
	ship.move();



	if(wPressed == true){
		ship.accelerate(.2);
	}
	if(sPressed == true){
		ship.accelerate(-.2);

	}
	if(aPressed == true){
		ship.turn(-7);
	}
	if(dPressed == true){
		ship.turn(7);
	}


}


public void keyPressed(){
	if(key == ' '){
		ship.hyperspace();
	}
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

public void mouseClicked(){
	bullet.add(new Bullet(ship));
}