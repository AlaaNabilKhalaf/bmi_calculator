import 'package:flutter/material.dart';
import 'two.dart';
import 'dart:math';
import 'package:rflutter_alert/rflutter_alert.dart';
class HomeScreen extends StatefulWidget {
 double height = 150;
 bool cheker = true ;
 int age = 19 ;
 double weight = 0 ;
 late double bmi_result;
 String theGender = 'male' ;

  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    widget.bmi_result = widget.weight / pow(widget.height/100,2);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
        //  leading: Icon(Icons.ac_unit, size: 45,),
        //  leadingWidth: 90,
          centerTitle: true,
          title:
          Row(
            children: const [
            Icon(Icons.ac_unit, size: 45,),
              SizedBox(width: 6,),
              Text('BMI CALCULATOR',
                style: TextStyle(
                    fontSize: 30
                ),),
            ],
          ),
        ),
        body: Column(

          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: Container(
                      height: 250,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: widget.cheker ? Colors.pink.shade100:Colors.white,
                            width: 8,
                          )
                      ),
                      child: GestureDetector(
                          onTap: (){
                            //girl
                            widget.cheker = true;
                            widget.theGender= 'Female';
                            setState(() {});
                          },
                          child:
                    Image.asset('asset/FB_IMG_1589205099796.jpg',fit: BoxFit.cover)),
                    )
                    ),
                   const SizedBox(width: 35,),
                    Expanded(
                      child: Container(
                        height: 250,width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: widget.cheker == false ? Colors.pink.shade100:Colors.white,
                            width: 8,
                          )
                      ),
                        child: GestureDetector(
                      onTap: (){
                        //boy
                        widget.cheker = false;
                        widget.theGender = 'Male';
                        setState(() {});
                      },
                      child: Image.asset('asset/FB_IMG_1589205103563.jpg',fit: BoxFit.cover,
                        ),
                    ),
                    ),
                    )],
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                 // height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.pink.shade100,
                      width: 8
                    ),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                     const SizedBox(height: 8,),
                      const Text('Height',style: TextStyle(
                    fontSize: 29,
                    color: Colors.purpleAccent,)),
                       const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text('${widget.height.toInt()}',style: const TextStyle(
                              fontSize: 26,
                              color: Colors.purpleAccent,

                            ),),
                       const  SizedBox(width: 2,),
                        const Text('cm',style: TextStyle(
                              fontSize: 19,
                              color: Colors.purpleAccent),

                            ),
                           ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Slider(
                          activeColor: Colors.pink[100],
                          value:  widget.height ,
                          min: 100 ,
                          max:  200,
                          onChanged: (value) {
                             widget.height  = value;
                            setState(() {});
                          },
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                      //  height: 220,
                        //width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Colors.pink.shade100,
                                width: 8

                            )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //SizedBox(height: 10,),
                         const   Text('WEIGHT', style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 30
                          ),),
                            //SizedBox(height: 10,),
                            Text('${widget.weight.toInt()}', style: const TextStyle(
                                color: Colors.purpleAccent,
                                fontSize: 30)),
                            //SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    widget.weight-- ;
                                    setState(() {
                                    });
                                  }
                                  ,child: const Icon(Icons.arrow_back_ios,
                                      color: Colors.purpleAccent),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    widget.weight++ ;
                                    setState(() {

                                    });
                                  }
                                  ,child: const Icon(Icons.arrow_forward_ios,
                                  color: Colors.purpleAccent),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(width: 25,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Colors.pink.shade100,
                                width: 8
                            )
                        ),
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      //SizedBox(height: 10,),
                      const Text('AGE', style: TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 30
                      ),),
                      //SizedBox(height: 10,),
                      Text('${widget.age}', style: const  TextStyle(
                      color: Colors.purpleAccent,
                      fontSize: 30)),
                      //SizedBox(height: 10,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      GestureDetector(
                      onTap: (){
                        if (widget.age == 19){
                          //Alert(context: context, title: "Wait", desc: "Bmi is not calculated for less than 19 age").show();
                          Alert(
                            context: context,
                            type: AlertType.info,
                            title: "WAIT",
                            desc: "Bmi is not calculated for less than 19 age",
                            buttons: [
                              DialogButton(
                            color: Colors.pink.shade100,
                                onPressed: () => Navigator.pop(context),
                                width: 125,
                                child: const Text(
                                  "COOL",
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              )
                            ],
                          ).show();
                        }else{
                          widget.age-- ;
                        }
                      setState(() {
                      });
                      }
    ,child: const  Icon(Icons.arrow_back_ios,
    color: Colors.purpleAccent),
    ),
    GestureDetector(
    onTap: (){
    widget.age++ ;
    setState(() {

    });
    }
    ,child: const Icon(Icons.arrow_forward_ios,
    color: Colors.purpleAccent),
    ),
    ],
    )
    ],
    ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(flex: 1,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return
                        ResultScreen(
                          gender: widget.theGender,
                      age: widget.age,
                      height: widget.height,
                      bmiResult: widget.bmi_result ,
                      weight: widget.weight,);
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 5
                    ),
                    child: Container(
                      alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.pink.shade100,
                            width: 8
                          )
                        ),
                        child: const Text('CALCULATE',
                        style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 40
                        ),),

                      ),
                  ),
                ),),
          ],
        )
    );
  }
}
