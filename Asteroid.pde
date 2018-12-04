class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid(){

		rotSpeed = (int)(Math.random()*2)-1;
		myColor = 127;
      	corners = 40;
      	int[] yS = {1,1,3,3,7,7,9,9,13,13,15,15,13,13,7,7,3,3,1,1,   -1,-1,-3,-3,-7,-7,-13,-13,-15,-15,-13,-13,-9,-9,-7,-7,-3,-3,-1,-1};
      	int[] xS = {19,15,15,5,3,9,9,-3,5,3,3,-13,-13,-11,-7,-11,-11,-9,-9,-13,     -13,-9,-9,-11,-11,-7,-11,-13,-13,3,3,5,-3,9,9,3,5,15,15,19};
      	xCorners = xS;
     	yCorners = yS;
    	for(int i = 0; i<corners; i++){
        	xCorners[i]*=1.3;
        	yCorners[i]*=1.3;
      	}
      	myCenterX = Math.random()*width;
      	myCenterY = Math.random()*height;
      	myDirectionX = Math.random()*3;
      	myDirectionY = Math.random()*3;
      	myPointDirection = Math.random()*360;
	}



	public void move(){
		turn(rotSpeed);
		super.move();
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