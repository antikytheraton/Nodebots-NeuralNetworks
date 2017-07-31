// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An animated drawing of a Neural Network

Network network;

void setup() {
  size(640, 360); 
  // Create the Network object
  network = new Network(width/2, height/2);

  // Create a bunch of Neurons
  Neuron a = new Neuron(-275,  100);
  Neuron b = new Neuron(-275,  0);
  Neuron c = new Neuron(-275, -100);
  Neuron d = new Neuron(0,     150);
  Neuron e = new Neuron(0,     50);
  Neuron f = new Neuron(0,    -50);
  Neuron g = new Neuron(0,    -150);
  Neuron h = new Neuron(275,   50);
  Neuron i = new Neuron(275,  -50); 

  // Connect them
  network.connect(a, d, 1);
  network.connect(a, e, random(1));
  network.connect(a, f, random(1));
  network.connect(a, g, random(1));
  network.connect(b, d, 1);
  network.connect(b, e, random(1));
  network.connect(b, f, random(1));
  network.connect(b, g, random(1));
  network.connect(c, d, 1);
  network.connect(c, e, random(1));
  network.connect(c, f, random(1));
  network.connect(c, g, random(1));
  network.connect(d, h, random(1));
  network.connect(d, i, random(1));
  network.connect(e, h, random(1));
  network.connect(e, i, random(1));
  network.connect(f, h, random(1));
  network.connect(f, i, random(1));
  network.connect(g, h, random(1));
  network.connect(g, i, random(1));

  // Add them to the Network
  network.addNeuron(a);
  network.addNeuron(b);
  network.addNeuron(c);
  network.addNeuron(d);
  network.addNeuron(e);
  network.addNeuron(f);
  network.addNeuron(g);
  network.addNeuron(h);
  network.addNeuron(i);
}

void draw() {
  background(255);
  // Update and display the Network
  network.update();
  network.display();
  
  // Every 30 frames feed in an input
  if (frameCount % 30 == 0) {
    network.feedforward(random(1));
  }
}