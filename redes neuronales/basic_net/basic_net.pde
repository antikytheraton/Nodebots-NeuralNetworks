// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An animated drawing of a Neural Network

// Updated by: Aaron Arredondo

Network network;

void setup() {
  size(640, 360); 
  // Create the Network object
  network = new Network(width/2, height/2);

  // Create a bunch of Neurons
  Neuron a = new Neuron(-275, 0);
  Neuron e = new Neuron(0, 0);
  Neuron f = new Neuron(275, 0);

  // Connect them
  network.connect(a, e,1);
  network.connect(e, f,1);

  // Add them to the Network
  network.addNeuron(a);
  network.addNeuron(e);
  network.addNeuron(f);
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