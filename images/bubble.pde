int count = 200;
float[] posX = new float[count]; 
float[] posY = new float[count];
float[] speedX = new float[count];
float[] speedY = new float[count];
float[] sizeW = new float[count];
float[] sizeH = new float[count];
int[] colorsR = new int[count];
int[] colorsG = new int[count];
int[] colorsB = new int[count];
int[] alpha = new int [count];

void setup() { 
  size(1500, 1500);
  background(255); 
  noStroke();
  for (int i=0; i < posX.length; i++) { 
    posX[i] = width/2; 
    posY[i] = height/2; 
    speedX[i] = random(-5, 5); 
    speedY[i] = random(-5, 5); 
    sizeW[i] = random(20, 75); 
    sizeH[i] = random(20, 100); 
    colorsR[i] = int(random(0, 255));
    colorsG[i] = int(random(0, 255));
    colorsB[i] = int(random(0, 255));
    alpha[i] = int(random(255));
    
    
  }
} 
void draw() { 
 //  background(255); 
 saveFrame("frames/ex3_#####.png");
 ellipse(0,0,width, height);
 ellipse(1500,0,width,height);
 ellipse(0,1500, width, height);
 ellipse(1500,1500,width,height);
 fill(255,20);
 rect(1500,1500,width,height);
 fill(255); 
  for (int i = 0; i < posX.length; i++) { 
    if (posX[i] < 40+sizeW[i]/2 || posX[i] > (width-40)-sizeW[i]/2 ) { 
      speedX[i] = -speedX[i];
    } 
    if (posY[i] < 40+sizeW[i]/2 || posY[i] > (height-40)-sizeW[i]/2) { 
      speedY[i] = -speedY[i];
    }
    posX[i] += speedX[i]; 
    posY[i] += speedY[i]; 
    fill(colorsR[i],colorsG[i],colorsB[i], alpha[i]); 
    ellipse(posX[i], posY[i], sizeW[i], sizeH[i]); 
  }
  
} 
