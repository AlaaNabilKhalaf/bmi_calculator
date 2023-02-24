import 'package:flutter/material.dart';

class tree extends StatelessWidget {
  const tree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
    backgroundColor: Colors.pink[100],
      title: Text('Rates',
        style: TextStyle(
            fontSize: 30
        ),),
    ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.purpleAccent,
              width: 5
            )
          ),

          child:
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: Text('Category',style: TextStyle(
                                    color: Colors.pink.shade100,
                                    fontSize: 40
                                ),),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                child: Text('Severe Thinness',style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('Moderate Thinness',style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text('Mild Thinness',style: TextStyle(
                                    color: Colors.purpleAccent,

                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,
                                child: Text('Normal',style: TextStyle(
                                    color: Colors.purpleAccent,

                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,

                                child: Text('Overweight',style: TextStyle(
                                    color: Colors.purpleAccent,
                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,

                                child: Text('Obese Class I',style: TextStyle(
                                    color: Colors.purpleAccent,

                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.topLeft,

                                child: Text('Obese Class II',style: TextStyle(
                                    color: Colors.purpleAccent,

                                    fontSize: 30
                                ),),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text('Obese Class III',style: TextStyle(
                                    color: Colors.purpleAccent,

                                    fontSize: 30
                                ),),
                              ),
                            ),


                          ],
                        ),

                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Text('BMI range   kg/m2',style: TextStyle(
                                  color: Colors.pink.shade100,
                                  fontSize: 35
                              ),),
                            ),
                          ),


                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('<16',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('16 - 17',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('17 - 18.5',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('18.5 - 25',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('25 - 30',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('	30 - 35',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('	35 - 40',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('>40',style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 30
                              ),),
                            ),
                          ),


                        ],
                      ),

                    ),
                  ],
                ),
              ),
          ),
      ),
      )
    ;
  }
}
