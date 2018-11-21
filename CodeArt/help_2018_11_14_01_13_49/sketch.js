var b = 'help'
var c = "i'm stuck in the void"

function setup() {
  createCanvas(600, 600);
  noStroke();
}

function draw() {
  var x = mouseX;
  var y = mouseY;
  var ix = width - mouseX; // Inverse X
  var iy = height - mouseY; // Inverse Y
  background(126);
  fill(255, 150);
  ellipse(x, height / 2, y, y);
  fill(0, 159);
  ellipse(ix, height / 2, iy, iy);
  fill(240);
  text(b, 15, 15, 50, 50);
  fill(240);
  text(c, 550, 550, 50, 50);
}