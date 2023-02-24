import 'package:flutter/material.dart';
import 'tree.dart';
class two extends StatelessWidget {
  two({required this.gender_cheker,
    required this.height ,
    required this.weight ,
    required this.bmiResult,
    required this.age});
  bool gender_cheker ;
 late  String gender ;
  double bmiResult;
  int age;
  double weight;
  double height;
  @override
  Widget build(BuildContext context) {
    if(gender_cheker = true){
      gender = 'female';
    }else{ gender = 'male'; }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text('Results',
          style: TextStyle(
              fontSize: 30
          ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20
        ),
        child: Column(
          children: [
            Image.asset('asset/IMG-20200112-WA0824.jpg',
              height: 230,
              width: 250,
              fit: BoxFit.cover,),
            SizedBox(height: 80,),
            Column(
              children: [
              Container(
                    alignment: Alignment.center,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.pink.shade100,
                        width: 5,
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Gender: ${gender}',
                          style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30,
                          ),),
                          Text('BMI Result: ${bmiResult.toInt()}',style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30,
                          ),),
                          Text('AGE: $age',style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30,
                          ),), Text('WEIGHT: ${weight.toInt()}',style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30,
                          ),),
                          Text('HEIGHT: ${height.toInt()}',style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30,
                          ),),
                        ],
                      ),
                    ),
                  ),
                SizedBox(height: 30,),
             GestureDetector(
               onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return tree();
               },));},
               child: Container(
                 alignment: Alignment.center,
                 child: Text('Go To Rates',style: TextStyle(
                   fontSize: 40,
                   color: Colors.purpleAccent
                 ),),
                 height: 80,
                 width: 325,
                 decoration: BoxDecoration(

                   borderRadius: BorderRadius.circular(40),
                   border: Border.all(
                     color: Colors.pink.shade100,
                     width: 5
                   )
                 ),
               ),
             )
             //   SizedBox(height: 30,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
