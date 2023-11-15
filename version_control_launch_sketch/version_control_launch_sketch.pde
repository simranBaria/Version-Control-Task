ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size() - 1; i > 0; i--){
    particles.get(i).update();
    particles.get(i).display();
    
    // Remove particle if off screen
    if(particles.get(i).position.y > 400) particles.remove(particles.get(i));
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
    println(particles.size());
  }
}
