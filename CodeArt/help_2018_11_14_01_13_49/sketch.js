var b = 'help'
var c = "i'm stuck in the void"
var d = 'with no way out'
var img= 'stick.png'


function preload() {
  img= loadImage("stick.png")
}
function setup(){

  createCanvas(1200, 700)
  noStroke();
  noCursor();
}

function draw() {
  var x = mouseX;
  var y = mouseY;
  var ix = width - mouseX; // Inverse X
  var iy = height - mouseY; // Inverse Y

  background(0);
  background(126);
  image(img,mouseX,mouseY);
  //bubbles
  fill(255, 150);
  ellipse(x, height / 3, y, y);
  fill(0, 159);
  ellipse(ix, height / 2, iy, iy);
  //text
  fill(240);
  text(b, 15, 15, 50, 50);
  fill(240);
  text(c, 590, 350, 50, 50);
  fill(240);
  text(d, 1100, 660, 50, 50);
}
