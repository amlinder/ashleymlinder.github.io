let xPos=0;
let birds=0;
function setup() {
  createCanvas(600, 500);

  // set background color in grayscale

}

function draw() {
  //
	xPos-= 1;
	console.log(xPos);

	background(150,0, 150);

fill(random(0,255));
strokeWeight(0);
ellipse(xPos,200,200,80)
}
