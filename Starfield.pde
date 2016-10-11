Particle[] dot;
void setup() 
{ 
	dot = new Particle[50];	 
	size(500,500); 
	for(int i = 0; i < dot.length; i++) 
	{ 
		dot[i] = new NormalParticle(250,250); 
	}
	dot[49] = new JumboParticle(200,200);
	dot[48] = new OddballParticle(400, 400);
} 
void draw() 
{ 
	background(0); 
	for(int i = 0; i < dot.length; i++) 
 	{ 
 		dot[i].show(); 
 		dot[i].move(); 
 	}

 	// w += .11; 
 	// l += .11; 
 } 
void mousePressed() 
{ 
 	redraw(); 
} 
class NormalParticle implements Particle
{ 
 	double myX, myY; 
 	double theta, speed; 
 	NormalParticle(int x,int y) 
 	{ 
 		myX = x; 
 		myY = y; 
 
 		theta = Math.random() * 6.28; 
 		speed = Math.random() * 10; 
 	} 
 	void move() 
 	{
 		if(myX>500||myX<0){
 			myX=250;
 			myY=250;
 		}
 		else{
 			myX += Math.sin(theta) * speed; 
 		}
 		if(myY>500||myY<0){
 			myY=250;
 			myX=250;
 		}
 		else{
 			myY += Math.cos(theta) * speed;
 		}
 	} 
 	void show() 
 	{ 
 		fill(255); 
 		ellipse((float)myX, (float)myY, 10,10); 
 	} 
} 
interface Particle 
{ 
	public void show();
 	public void move();
} 
class OddballParticle implements Particle
{
 	double myX, myY;
 	int rX, rY; 
 	double theta, speed; 
 	OddballParticle(int x,int y) 
 	{ 
 		myX = x; 
 		myY = y; 
 
 		theta = Math.random() * 6.28; 
 		speed = Math.random() * 10; 
 	} 
 	void move() 
 	{ 
 		if(myX>500||myX<0){
 			myX=250;
 		}
 		else{
 			myX += Math.sin(theta) * speed; 
 		}
 		if(myY>500||myY<0){
 			myY=250;
 		}
 		else{
 			myY += Math.cos(theta) * speed;
 		}
 		rX = 20+(int)(Math.random()*20);
 		rY = 20+(int)(Math.random()*20);
 	} 
 	void show() 
 	{ 
 		fill(255); 
 		ellipse((float)myX, (float)myY, rX, rY); 
 	} 
} 
class JumboParticle implements Particle
{
 	double myX, myY; 
 	double theta, speed;
 	JumboParticle(int x,int y) 
 	{ 
 		myX = x; 
 		myY = y; 
 		theta = Math.random() * 6.28; 
 		speed = Math.random() * 10; 
 	} 
 	void move() 
 	{ 
 		if(myX>500||myX<0){
 			myX=250;
 		}
 		else{
 			myX += Math.sin(theta) * speed; 
 		}
 		if(myY>500||myY<0){
 			myY=250;
 		}
 		else{
 			myY += Math.cos(theta) * speed;
 		}
 	}
	void show()
	{
 		ellipse((float)myX, (float)myY, 50,50); 
	}
} 
