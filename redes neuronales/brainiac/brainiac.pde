// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An animated drawing of a Neural Network

Network network;
PImage img;

void setup() {
  size(700,600); 
  img = loadImage("brain_net.png");
  // Create the Network object
  network = new Network(0, 0);

  // Create a bunch of Neurons
  
  // Input layer
  Neuron i1 = new Neuron(100, 412);
  Neuron i2 = new Neuron(60, 360);
  Neuron i3 = new Neuron(30, 300);
  Neuron i4 = new Neuron(46, 229);
  Neuron i5 = new Neuron(86, 170);
  Neuron i6 = new Neuron(122, 137);
  
  // Hidden layers
  Neuron hl11 = new Neuron(200, 466);
  Neuron hl12 = new Neuron(200, 391);
  Neuron hl13 = new Neuron(200, 325);
  Neuron hl14 = new Neuron(200, 256);
  Neuron hl15 = new Neuron(200, 195);
  Neuron hl16 = new Neuron(200, 137);
  Neuron hl17 = new Neuron(200,  82);
  
  Neuron hl21 = new Neuron(357, 466);
  Neuron hl22 = new Neuron(357, 391);
  Neuron hl23 = new Neuron(357, 325);
  Neuron hl24 = new Neuron(357, 256);
  Neuron hl25 = new Neuron(357, 195);
  Neuron hl26 = new Neuron(357, 119);
  Neuron hl27 = new Neuron(357,  58);
  
  Neuron hl31 = new Neuron(500, 491);
  Neuron hl32 = new Neuron(500, 400);
  Neuron hl33 = new Neuron(500, 325);
  Neuron hl34 = new Neuron(500, 250);
  Neuron hl35 = new Neuron(500, 163);
  Neuron hl36 = new Neuron(500, 86);
  
  // Output layers
  Neuron h = new Neuron(656, 392);
  Neuron i = new Neuron(652, 288); 
  


  // Connect them
  network.connect(i1, hl11, random(1));
  network.connect(i1, hl12, random(1));
  network.connect(i1, hl13, random(1));
  network.connect(i1, hl14, random(1));
  network.connect(i1, hl15, random(1));
  network.connect(i1, hl16, random(1));
  network.connect(i1, hl17, random(1));
  network.connect(i2, hl11, random(1));
  network.connect(i2, hl12, random(1));
  network.connect(i2, hl13, random(1));
  network.connect(i2, hl14, random(1));
  network.connect(i2, hl15, random(1));
  network.connect(i2, hl16, random(1));
  network.connect(i2, hl17, random(1));
  network.connect(i3, hl11, random(1));
  network.connect(i3, hl12, random(1));
  network.connect(i3, hl13, random(1));
  network.connect(i3, hl14, random(1));
  network.connect(i3, hl15, random(1));
  network.connect(i3, hl16, random(1));
  network.connect(i3, hl17, random(1));
  network.connect(i4, hl11, random(1));
  network.connect(i4, hl12, random(1));
  network.connect(i4, hl13, random(1));
  network.connect(i4, hl14, random(1));
  network.connect(i4, hl15, random(1));
  network.connect(i4, hl16, random(1));
  network.connect(i4, hl17, random(1));
  network.connect(i5, hl11, random(1));
  network.connect(i5, hl12, random(1));
  network.connect(i5, hl13, random(1));
  network.connect(i5, hl14, random(1));
  network.connect(i5, hl15, random(1));
  network.connect(i5, hl16, random(1));
  network.connect(i5, hl17, random(1));
  network.connect(i6, hl11, random(1));
  network.connect(i6, hl12, random(1));
  network.connect(i6, hl13, random(1));
  network.connect(i6, hl14, random(1));
  network.connect(i6, hl15, random(1));
  network.connect(i6, hl16, random(1));
  network.connect(i6, hl17, random(1));
  
  network.connect(hl11, hl21, random(1));
  network.connect(hl11, hl22, random(1));
  network.connect(hl11, hl23, random(1));
  network.connect(hl11, hl24, random(1));
  network.connect(hl11, hl25, random(1));
  network.connect(hl11, hl26, random(1));
  network.connect(hl11, hl27, random(1));
  network.connect(hl12, hl21, random(1));
  network.connect(hl12, hl22, random(1));
  network.connect(hl12, hl23, random(1));
  network.connect(hl12, hl24, random(1));
  network.connect(hl12, hl25, random(1));
  network.connect(hl12, hl26, random(1));
  network.connect(hl12, hl27, random(1));
  network.connect(hl13, hl21, random(1));
  network.connect(hl13, hl22, random(1));
  network.connect(hl13, hl23, random(1));
  network.connect(hl13, hl24, random(1));
  network.connect(hl13, hl25, random(1));
  network.connect(hl13, hl26, random(1));
  network.connect(hl13, hl27, random(1));
  network.connect(hl14, hl21, random(1));
  network.connect(hl14, hl22, random(1));
  network.connect(hl14, hl23, random(1));
  network.connect(hl14, hl24, random(1));
  network.connect(hl14, hl25, random(1));
  network.connect(hl14, hl26, random(1));
  network.connect(hl14, hl27, random(1));
  network.connect(hl15, hl21, random(1));
  network.connect(hl15, hl22, random(1));
  network.connect(hl15, hl23, random(1));
  network.connect(hl15, hl24, random(1));
  network.connect(hl15, hl25, random(1));
  network.connect(hl15, hl26, random(1));
  network.connect(hl15, hl27, random(1));
  network.connect(hl16, hl21, random(1));
  network.connect(hl16, hl22, random(1));
  network.connect(hl16, hl23, random(1));
  network.connect(hl16, hl24, random(1));
  network.connect(hl16, hl25, random(1));
  network.connect(hl16, hl26, random(1));
  network.connect(hl16, hl27, random(1));
  network.connect(hl17, hl21, random(1));
  network.connect(hl17, hl22, random(1));
  network.connect(hl17, hl23, random(1));
  network.connect(hl17, hl24, random(1));
  network.connect(hl17, hl25, random(1));
  network.connect(hl17, hl26, random(1));
  network.connect(hl17, hl27, random(1));
  
  network.connect(hl21, hl31, random(1));
  network.connect(hl21, hl32, random(1));
  network.connect(hl21, hl33, random(1));
  network.connect(hl21, hl34, random(1));
  network.connect(hl21, hl35, random(1));
  network.connect(hl21, hl36, random(1));
  network.connect(hl22, hl31, random(1));
  network.connect(hl22, hl32, random(1));
  network.connect(hl22, hl33, random(1));
  network.connect(hl22, hl34, random(1));
  network.connect(hl22, hl35, random(1));
  network.connect(hl22, hl36, random(1));
  network.connect(hl23, hl31, random(1));
  network.connect(hl23, hl32, random(1));
  network.connect(hl23, hl33, random(1));
  network.connect(hl23, hl34, random(1));
  network.connect(hl23, hl35, random(1));
  network.connect(hl23, hl36, random(1));
  network.connect(hl24, hl31, random(1));
  network.connect(hl24, hl32, random(1));
  network.connect(hl24, hl33, random(1));
  network.connect(hl24, hl34, random(1));
  network.connect(hl24, hl35, random(1));
  network.connect(hl24, hl36, random(1));
  network.connect(hl25, hl31, random(1));
  network.connect(hl25, hl32, random(1));
  network.connect(hl25, hl33, random(1));
  network.connect(hl25, hl34, random(1));
  network.connect(hl25, hl35, random(1));
  network.connect(hl25, hl36, random(1));
  network.connect(hl26, hl31, random(1));
  network.connect(hl26, hl32, random(1));
  network.connect(hl26, hl33, random(1));
  network.connect(hl26, hl34, random(1));
  network.connect(hl26, hl35, random(1));
  network.connect(hl26, hl36, random(1));
  
  network.connect(hl31, i, random(1));
  network.connect(hl31, h, random(1));
  network.connect(hl32, i, random(1));
  network.connect(hl32, h, random(1));
  network.connect(hl33, i, random(1));
  network.connect(hl33, h, random(1));
  network.connect(hl34, i, random(1));
  network.connect(hl34, h, random(1));
  network.connect(hl35, i, random(1));
  network.connect(hl35, h, random(1));
  network.connect(hl36, i, random(1));
  network.connect(hl36, h, random(1));

  // Add them to the Network
  network.addNeuron(i1);
  network.addNeuron(i2);
  network.addNeuron(i3);
  network.addNeuron(i4);
  network.addNeuron(i5);
  network.addNeuron(i6);
  network.addNeuron(hl11);
  network.addNeuron(hl12);
  network.addNeuron(hl13);
  network.addNeuron(hl14);
  network.addNeuron(hl15);
  network.addNeuron(hl16);
  network.addNeuron(hl17);
  network.addNeuron(hl21);
  network.addNeuron(hl22);
  network.addNeuron(hl23);
  network.addNeuron(hl24);
  network.addNeuron(hl25);
  network.addNeuron(hl26);
  network.addNeuron(hl27);
  network.addNeuron(hl31);
  network.addNeuron(hl32);
  network.addNeuron(hl33);
  network.addNeuron(hl34);
  network.addNeuron(hl35);
  network.addNeuron(hl36);
  network.addNeuron(h);
  network.addNeuron(i);
}

void draw() {
  background(255);
  image(img, 0, 0);
  // Update and display the Network
  network.update();
  network.display();
  
  // Every 30 frames feed in an input
  if (frameCount % 30 == 0) {
    network.feedforward(random(1));
  }
  print(mouseX);
  print('\t');
  print(mouseY);
  print('\n');
}