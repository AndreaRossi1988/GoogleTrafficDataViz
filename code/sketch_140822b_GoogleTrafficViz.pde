import toxi.geom.*;


ArrayList <Entry> allEntries;

int r = 0;
Vec3D rLoc = new Vec3D();


void setup() {
  size(1280, 720, OPENGL);
  smooth(8);
  frameRate(24);

  allEntries = new ArrayList <Entry>();

  String[] allData = loadStrings("dataIn/google-traffic-disruptions.csv");
  for (int i = 1; i < allData.length; i++) {
    Entry e = new Entry(allData[i]);
    allEntries.add(e);

    if (!e.startDate.isNull) println("startDate: " + e.startDate.day + "/" + e.startDate.month + "/" + e.startDate.year);
    else println("startDate: missing");
    if (!e.endDate.isNull) println("endDate: " + e.endDate.day + "/" + e.endDate.month + "/" + e.endDate.year);
    else println("endDate: missing");
  }

  println(allEntries.size());
}


void draw() {
  background(255);

  if (frameCount % 24 == 0) {
    r = floor(random(allEntries.size()));
    rLoc = new Vec3D(random(50, width - 50), random(50, height- 50), random(200));
  }

  Entry e = allEntries.get(r);    
  e.display(rLoc); 




  if (frameCount % 24 == 0) println("frameRate: " + frameRate);
}

