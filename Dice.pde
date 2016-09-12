int sum = 0;
int click = 0;
int numRoll = 0;
int rollOne = 0;
int rollTwo = 0;
int rollThree = 0;
int rollFour = 0;
int rollFive = 0;
int rollSix = 0;
void setup()
{
	noLoop();
	size(1200, 900);
}
void draw()
{
    //your code here
	background(255);
    for (int y = 5; y < 800; y = y + 50)
    {
    	for (int x = 5; x < 1200; x = x + 50)
    	{
    		Die orange = new Die(x, y);
    		orange.roll();
    		orange.show();
    		sum = sum + orange.diceCounter;
    	}
    }
    stroke(0);
	fill(0);
	textSize(20);
	text("Total Role is " + sum, 440, 850);
	text("Times Clicked:" + click, 440, 875);
	System.out.println(numRoll);
	text("Total Roles:" + numRoll, 100, 850);
	text("Rolled One:" + rollOne, 100, 870);
	text("Rolled Two:" + rollTwo, 100, 890);
	text("Rolled Three:" + rollThree, 300, 850);
	text("Rolled Four:" + rollFour, 300, 870);
	text("Rolled Five:" + rollFive, 300, 890);
	text("Rolled Six:" + rollSix, 800, 850);
}
void mousePressed()
{
	redraw();
	sum = 0;
	click = click + 1;
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
		rollOne ++;
      }
	  else if(diceValue == 2) 
	  {	
		ellipse(myX + 10, myY + 10, 8, 8);
		ellipse(myX + 30, myY + 30, 8, 8);
		rollTwo ++;
	  }
	  else if(diceValue == 3)
	  {
	  	ellipse(myX + 20, myY + 20, 8, 8);
	  	ellipse(myX + 10, myY + 10, 8, 8);
		ellipse(myX + 30, myY + 30, 8, 8);
		rollThree ++;
	  }
	  else if(diceValue == 4)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  	rollFour ++;
	  }
	  else if(diceValue == 5)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  	ellipse(myX + 20, myY + 20, 8, 8);
	  	rollFive ++;
	  }
	  else if(diceValue == 6)
	  {
	  	ellipse(myX + 10, myY + 10, 8, 8);
	  	ellipse(myX + 30, myY + 10, 8, 8);
	  	ellipse(myX + 10, myY + 30, 8, 8);
	  	ellipse(myX + 30, myY + 30, 8, 8);
	  	ellipse(myX + 10, myY + 20, 8, 8);
	  	ellipse(myX + 30, myY + 20, 8, 8);
	  	rollSix ++;
	  }
	}
	void roll()
	{
      diceValue = (int)((Math.random() * 6) + 1);
      diceCounter = diceCounter + diceValue;
      numRoll ++;
	}
}