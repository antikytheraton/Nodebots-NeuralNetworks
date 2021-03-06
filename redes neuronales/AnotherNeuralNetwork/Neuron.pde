// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An animated drawing of a Neural Network

class Neuron {
  // Neuron has a position
  PVector position;

  // Neuron has a list of connections
  ArrayList<Connection> connections;
  
  // We now track the inputs and sum them
  float sum = 0;
  
  // The Neuron's size can be animated
  float r = 32;
  
  Neuron(float x, float y) {
    position = new PVector(x, y);
    connections = new ArrayList<Connection>();
  }

  // Add a Connection
  void addConnection(Connection c) {
    connections.add(c);
  } 
  
  // Receive an input
  void feedforward(float input) {
    // Accumulate it
    sum += input;
    // Activate it?
    if (sum > 3) {
      fire();
      sum = 0;  // Reset the sum to 0 if it fires
    } 
  }
  
  // The Neuron fires
  void fire() {
    r = 64;   // It suddenly is bigger
    
    // We send the output through all connections
    for (Connection c : connections) {
       c.feedforward(sum);
    } 
  }
  
  // Draw it as a circle
  void display() {
    stroke(0);
    strokeWeight(1);
    // Brightness is mapped to sum
    float b = map(sum,0,3,255,0);
    fill(b);
    ellipse(position.x, position.y, r, r);
    
    // Size shrinks down back to original dimensions
    r = lerp(r,32,0.1);
  }
}