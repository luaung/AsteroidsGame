class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid(){

		rotSpeed = (int)(Math.random()*2)-1;
		myColor = 127;
      	corners = 5;
      	int[] yS = {2,4,0,-5,-3};
      	int[] xS = {4,-1,-4,-2,3};
      	xCorners = xS;
     	yCorners = yS;
    	for(int i = 0; i<corners; i++){
        	xCorners[i]*=5;
        	yCorners[i]*=5;
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