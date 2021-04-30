import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(                     
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {                      
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Image(
                              image: AssetImage("assets/male.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Hombre",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ButtonStyle(                      
                      padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Image(
                              image: AssetImage("assets/female.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Mujer",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),              
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Estatura",
                  style: TextStyle(fontSize: 22),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "166",
                      style:
                          TextStyle(fontSize: 41, fontWeight: FontWeight.bold),
                    ),
                    Baseline(
                      baseline: 35,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        "cm",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),                
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),                    
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Peso",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "62",
                        style: TextStyle(
                            fontSize: 44, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder()),
                            onPressed: () {                              
                            },
                            child: Text("-",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder()),
                                
                            onPressed: () {                              
                            },
                            child: Text("+",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),                    
                  ),
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Edad",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "38",
                        style: TextStyle(
                            fontSize: 44, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder()),
                                
                            onPressed: () {
                            },
                            child: Text("-",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold)),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder()),
                                
                            onPressed: () {
                            },
                            child: Text("+",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 90,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pink)),
                  onPressed: () {                    
                      
                  },
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
