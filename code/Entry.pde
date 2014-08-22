class Entry {

  String URL;
  String terrCode;
  String region;
  String product;
  Date startDate;
  Date endDate;
  String source;
  String sourceURL;
  String title;
  String excerpt = "";
  
  
  color c = color(random(200), random(200), random(200));


  Entry(String inputData) {
    parseData(inputData);
  }

  void parseData(String input) {
    String[] parse = split(input, ",");

    URL = parse[0];
    terrCode = parse[1];
    region = parse[2];
    product = parse[3];
    if (parse[4] == "") startDate = null;
    else startDate = new Date(parse[4]);
    if (parse[5] == "") endDate = null;
    else endDate = new Date(parse[5]);
    source = parse[6];
    sourceURL = parse[7];
    title = parse[8];

    for (int i = 9; i < parse.length; i++) {
      excerpt = excerpt + parse[i];
    }
  }
  
  
  void display(Vec3D loc){
    textSize(20);
    fill(c);
    noStroke();
    text("region: " + region, loc.x, loc.y, loc.z);
    text("product: " + product, loc.x, loc.y + 25, loc.z);
    text("source: " + source, loc.x, loc.y + 50, loc.z);
    text("title: " + title, loc.x, loc.y + 75, loc.z);
    
  }
}

