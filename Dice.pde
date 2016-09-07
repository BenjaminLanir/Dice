void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
    //your code here
	background(255);
    for (int y = 5; y < 300; y = y + 50)
    {
    	for (int x = 5; x < 400; x = x + 50)
    	{
    		Die orange = new Die(x, y);
    		orange.roll();
    		orange.show();
    	}
    }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	int diceValue, diceCounter, diceRole;
	Die(int x, int y) //constructor
	{
		diceValue = diceRole;
		myX = x;
		myY = y;
		//variable initializations here
	}
	void show()
	{
	  fill(0, 0, 255);
	  rect(myX, myY, 40, 40);	//your code here
	  fill(255);
	  if(diceValue == 1)//your code here
	  {
		ellipse(myX + 20, myY + 20, 8, 8);
      }
	  else if(diceValue == 2) 
	  {	
		ellipse(myX + 10, myY + 10, 8, 8);
		ellipse(myX + 30, myY + 30, 8, 8);
	  }
	  else if(diceValue == 3)
	  {
	  	ellipse(myX + 20, myY + 20, 8, 8);
	  	ellipse(myX + 10, myY + 10, 8, 8);
		ellipse(myX + 30, myY + 30, 8, 8);
	  }
	  else if(diceValue == 4)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  }
	  else if(diceValue == 5)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  	ellipse(myX + 20, myY + 20, 8, 8);
	  }
	  else if(diceValue == 6)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  	ellipse(myX + 10, myY + 20, 8, 8);
	  	ellipse(myX + 30, myY + 20, 8, 8);
	  }
	}
	void roll()
	{
      diceValue = (int)((Math.random() * 6) + 1);
      diceCounter = diceCounter + diceValue;
      	
	}
}
/*
	  stroke(0);
	  fill(0);
	  text("Total Role is " + diceCounter, 250, 350);
	  */