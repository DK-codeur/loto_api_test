import 'package:flutter/material.dart';
import 'package:lotto_test/providers/models/loto.dart';
import 'package:provider/provider.dart';


class ResultatGhItem extends StatefulWidget {
  ResultatGhItem({Key key}) : super(key: key);

  @override
  _ResultatGhItemState createState() => _ResultatGhItemState();
}

class _ResultatGhItemState extends State<ResultatGhItem> {
  
  @override
  Widget build(BuildContext context) {

    final lotto = Provider.of<Loto>(context, listen: false);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height/1.34,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          height: MediaQuery.of(context).size.height/2.5,
                          width: MediaQuery.of(context).size.width/1.1,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 15),
                              Text('${lotto.date}', style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 50),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  height: 20,
                                  width: 180,
                                  child: Text('Numéros Machines', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16,   color: Colors.green
                                  ), ),
                                ),
                              ),
                              //SizedBox(height: 2),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '${lotto.numMachine}',
                                        style: TextStyle(
                                          color: Colors.green
                                        ),
                                    )
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                height: 20,
                                width: 180,
                                child: Text('Numéros Gagnants', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16,  color: Colors.deepOrange,
                                ), ),
                              ),
                              //SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '${lotto.numGagnant}',
                                      style: TextStyle(
                                        color: Colors.orange
                                      ),
                                    )
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.deepOrange,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.deepOrange,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.deepOrange,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.deepOrange,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                    // SizedBox(width: 8,),
                                    // Container(
                                    //   height: 40,
                                    //   width: 40,
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.deepOrange,
                                    //       shape: BoxShape.circle
                                    //   ),
                                    //   child: Center(
                                    //       child: Text('06', style: TextStyle(
                                    //           color: Colors.white
                                    //       ),)
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

