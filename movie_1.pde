import processing.video.*;

Movie myMovie;
int VideoPlaying;

boolean Vid0 = false;
boolean Vid1 = false;
boolean Vid2 = false;
boolean Vid3 = false;
boolean Vid4 = false;
boolean Vid5 = false;
boolean Vid6 = false;

//Videos

Movie Video1;
Movie Video2;
Movie Video3;
Movie Video4;
Movie Video5;
Movie Video6;

//Load Screen

void setup() {
  size (1920 , 1080 );
  background(0);
  fill(57,255,20);
  textSize(30);
  String s = "Welcome to SKATE HELPER 4000. Once you have connected your device to your computer you may proceed. In order to download a trick, you must first upload footage of the trick. \n\nOnce the footage has been analyzed, click the MOUSE to return to this screen and press the corresponding button when complete.  \n \nPress 1 to upload Pop Shuv footage. Press 'a' when complete. \nPress 2 to download Pop Shuv. Press 'b' when complete. \n \nPress 3 to upload Kickflip footage. Press 'c' when complete. \nPress 4 to download Kickflip. Press 'd' when complete. \n \nPress 5 to upload Treflip footage. Press 'e' when complete. \nPress 6 to download Treflip. Press 'f' when complete.";
  text(s, 600,100,800,900);
  //videos
  Video1 = new Movie(this, "PS.mp4");
  Video2 = new Movie(this, "PS3D.mp4");
  Video3 = new Movie(this, "KF.mp4");
  Video4 = new Movie(this, "KF3D.mp4");
  Video5 = new Movie(this, "TF.mp4");
  Video6 = new Movie(this, "TF3D.mp4");
}

void draw() { 
  
  toggle();
  
  if (mousePressed == true) {
    VideoPlaying = 0;
    background(0);
    fill(57,255,20);
    textSize(30);
    String s = "Welcome to SKATE HELPER 4000. Once you have connected your device to your computer you may proceed. In order to download a trick, you must first upload footage of the trick. \n\nOnce the footage has been analyzed, click the MOUSE to return to this screen and press the corresponding button when complete.  \n \nPress 1 to upload Pop Shuv footage. Press 'a' when complete. \nPress 2 to download Pop Shuv. Press 'b' when complete. \n \nPress 3 to upload Kickflip footage. Press 'c' when complete. \nPress 4 to download Kickflip. Press 'd' when complete. \n \nPress 5 to upload Treflip footage. Press 'e' when complete. \nPress 6 to download Treflip. Press 'f' when complete.";
    text(s, 600,100,800,900);
  }

  if (Vid1) {
    println("Pop Shuv Video Demo"); //<>//
    Video1.play();
    background(0);
    image(Video1, 0, 0, width, height);
  }

  if (Vid2) {
    println("Pop Shuv Trick Download");
    background(0);
    Video2.play();
    image(Video2, 0, 0, width, height);
  }

  if (Vid3) {
    println("Kickflip Video Demo");
    background(0);
    Video3.play();
    image(Video3, 0, 0, width, height);
  }

  if (Vid4) {
    println("Kickflip Trick Download");
    background(0);
    Video4.play();
    image(Video4, 0, 0, width, height);
  }
  
  if (Vid5) {
    println("Treflip Video Demo");
    background(0);
    Video5.play();
    image(Video5, 0, 0, width, height);
  }
  
  if (Vid6) {
    println("Treflip Trick Download");
    background(0);
    Video6.play();
    image(Video6, 0, 0, width, height);
  }
}

void movieEvent(Movie myMovie) {
  myMovie.read();
}



void keyPressed(){
  
  if (key == 'a') {
    Video1.stop();  
  }
  
  if (key == 'b') {
    Video2.stop();
  }
  
  if (key == 'c') {
    Video3.stop();
  }
  
  if (key == 'd') {
    Video4.stop();
  }
  
  if (key == 'e') {
    Video5.stop();
  }
  
  if (key == 'f') {
    Video6.stop();
  }
  
  if (key == '1') {
    VideoPlaying = 1 ;
    println(VideoPlaying);
  }

  else if (key == '2') {
    VideoPlaying = 2 ;
    println(VideoPlaying);
  }

  else if (key == '3') {
    VideoPlaying = 3 ;
    println(VideoPlaying);
  }

  else if (key == '4') {
    VideoPlaying = 4 ;
    println(VideoPlaying);
  }
  
  else if (key == '5') {
    VideoPlaying = 5 ;
    println(VideoPlaying);
  }
  
  else if (key == '6') {
    VideoPlaying = 6 ;
    println(VideoPlaying);
  }
  
}

void toggle() {
  
  if (VideoPlaying == 0) {
    Vid1 = false;
    Vid2 = false;
    Vid3 = false;
    Vid4 = false;
    Vid5 = false;
    Vid6 = false;
  }

  if (VideoPlaying == 1) {
    Vid1 = true;
    Vid2 = false;
    Vid3 = false;
    Vid4 = false;
    Vid5 = false;
    Vid6 = false;
  }

  if (VideoPlaying == 2) {
    Vid1 = false;
    Vid2 = true;
    Vid3 = false;
    Vid4 = false;
    Vid5 = false;
    Vid6 = false;
  }

  if (VideoPlaying == 3) {
    Vid1 = false;
    Vid2 = false;
    Vid3 = true;
    Vid4 = false;
    Vid5 = false;
    Vid6 = false;
  }

  if (VideoPlaying == 4) {
    Vid1 = false;
    Vid2 = false;
    Vid3 = false;
    Vid4 = true;
    Vid5 = false;
    Vid6 = false;
  }
  
  if (VideoPlaying == 5) {
    Vid1 = false;
    Vid2 = false;
    Vid3 = false;
    Vid4 = false;
    Vid5 = true;
    Vid6 = false;
  }
  
  if (VideoPlaying == 6) {
    Vid1 = false;
    Vid2 = false;
    Vid3 = false;
    Vid4 = false;
    Vid5 = false;
    Vid6 = true;
  }
}
