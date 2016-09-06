void setup()
{
	noLoop();
	size(400, 400);

}
void draw()
{
    //your code here
	background(0);
    for (int y = 50; y < 300; y = y + 50)
    {
    	for (int x = 50; x < 400; x = x + 50)
    	{
    		Die orange = new Die(x, y);
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
	int diceValue;
	Die(int x, int y) //constructor
	{
		dieValue = (int)((Math.random() * 6) + 1);
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		dieValue = (int)((Math.random() * 6) + 1);//your code here
	}
	void show()
	{
	  fill(0, 0, 255);
	  rect(myX, myY, 40, 40);	//your code here
	}
}
