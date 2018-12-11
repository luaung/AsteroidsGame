class Bullet extends Floater
{
	public Bullet(Spaceship ship){
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		myPointDirection = ship.getPointDirection();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 7*Math.cos(dRadians) + ship.getDirectionX();
		myDirectionY = 7*Math.sin(dRadians) + ship.getDirectionY();
		myColor = 255;
	}

	public void show(){
		fill(17, 221, 221);
		ellipse((int)myCenterX,(int)myCenterY,10,10);
	}
	public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){myDirectionY = y;}  
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;}
}