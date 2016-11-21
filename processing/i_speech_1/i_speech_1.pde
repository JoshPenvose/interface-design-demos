import voce.*;

PFont font;
String s;
String s2;

void setup() {
  size(800, 600);
  voce.SpeechInterface.init(sketchPath("code/"), true, true, sketchPath("data/"), "test");
  font = createFont("RomanD", 20); 
  textFont(font); 
  String t = "YO";
  s2 = "YO";
  background(255);  
}

void draw() {
  fill(255); //white
  text(s2, 10, 55);
  while (voce.SpeechInterface.getRecognizerQueueSize () > 0) {
    s = voce.SpeechInterface.popRecognizedString();
    s2 = s;
    if (s.equals("green")) {
      println ("You said Green!");
      background(0,255,0);
      text("Green",10,10);
    } else if (s.equals("orange")) {
      println ("You said Orange!");
      background(255,165,0);
      text("Orange",10,10);
    } else if (s.equals("blue")) {
      background(0,0,255);
      println ("You said Blue!");
      text("Blue",10,10);      
    } else if (s.equals("red")) {
      background(0,255,0);
      println ("You said Red!");
      text("Red",10,10);
    } else if (s.equals("how are you")) {
      background(0,0,0);
      println ("I\'M GOOOOOOOD");
      text("I'm good!",10,10);
    }
  }
}