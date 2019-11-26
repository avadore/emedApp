
let digX=prompt('enter any number')
DIGX=digX.toString();

var x=digx;

function dit() {
    
    x=x.toString();
    x=( x.split(""));
    var digX=0;
    x.forEach(element => {
      digX=digX+parseInt(element)
    });
    console.log(digX);
    console.log(DIGX.length);
    digx=digX; 
  }

 do {
     dit()
 } while (DIGX.length<1);

console.log(digX);
