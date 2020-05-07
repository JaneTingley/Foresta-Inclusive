import http.requests.*;
Table finalData;


String [] sensors = {"Lux", "Temp-degree", "Particles2.5", "Particles10"};
public void setup() 
{

  size(400, 400);
  finalData  = new Table();

  for (int topic = 0; topic < sensors.length; topic++) {
    Table table;
    table = new Table();

    table.addColumn(sensors[topic]);
    TableRow newRow = table.addRow();


    GetRequest get = new GetRequest("https://api.shiftr.io/metrics/number-series?resolution=1h&topic=" + sensors[topic]);
    get.addUser("buddadweet~Foresta-Inclusive", "");

    get.send();
    println(sensors[topic], get.getContent());
    String content = get.getContent();
    content = content.replace("[[", "[");
    content = content.replace("]]", "]");
    String[] list =  content.split("(?![0-9]),(?![0-9])");


    for (int i = 0; i < list.length; i++) {
      String hold;
      String [] arrHold;


      hold = list[i].replace("[", "");
      hold = hold.replace("]", "");
      arrHold = hold.split(",");
      float tempVar = float(arrHold[1]);
      newRow = table.addRow();
      println(sensors[topic], tempVar);

      newRow.setFloat(sensors[topic], tempVar);
    }
    saveTable(table, "data/" + sensors[topic] + ".csv");
  }

  Table Lux = loadTable(sensors[0]+".csv", "header");
  Table temp = loadTable(sensors[1]+".csv", "header");
  Table Particles2 = loadTable(sensors[2]+".csv", "header");
  Table Particles10 = loadTable(sensors[3]+".csv", "header");

  finalData.addColumn(sensors[0]);
  finalData.addColumn(sensors[1]);
  finalData.addColumn(sensors[2]);
  finalData.addColumn(sensors[3]);

  for (int i = 0; i < Lux.getRowCount(); i++) {
    TableRow newRowFinal = finalData.addRow();

    newRowFinal.setFloat(sensors[0], Lux.getFloat(i, sensors[0]));
    newRowFinal.setFloat(sensors[1], temp.getFloat(i, sensors[1]));
    newRowFinal.setFloat(sensors[2], Particles2.getFloat(i, sensors[2]));
    newRowFinal.setFloat(sensors[3], Particles10.getFloat(i, sensors[3]));
  }


  saveTable(finalData, "data/aggregatedData/sensorData.csv");

  println("DONE");
    background(0, 255, 0);

  textSize(32);
  fill(0);
  textAlign(CENTER);

  text("Data Downloaded !", width/2, height/2); 
}
