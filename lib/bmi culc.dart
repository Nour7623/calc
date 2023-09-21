import 'dart:math';

import 'package:calc/bmi_result.dart';
import 'package:flutter/material.dart';

class bmiscreen extends StatefulWidget {
  const bmiscreen({super.key});

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
 bool ismale = true;
 double height = 120.0;
 int wight =40;
 int age =20;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI calculator',
        ),
      ),
      body: Column(

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:() {
                        setState(() {
                          ismale =true;

                        });
                      } ,
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:NetworkImage('https://o.remove.bg/downloads/d5bf0b87-6414-4dd5-8b11-72fa27769129/free-male-symbol-icon-2239-thumb-removebg-preview.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height:15.0,
                            ),
                            Text('MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold
                              ),
                              ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:ismale ? Colors.blue: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=false;

                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image:

                            NetworkImage('https://o.remove.bg/downloads/0d85ea88-eb98-4d15-9a1a-0e0380049d07/female-removebg-preview.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height:15.0,
                            ),
                            Text('FEMALE',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight:FontWeight.bold
                              ),
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:!ismale ? Colors.blue: Colors.grey[400]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('HIGHT',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,

                      children: [
                        Text('${height.round()}',
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('CM',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight:FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(value:height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){
                      setState(() {
                        height = value;
                      });
                      print(value.round());
                        },
                    ),

                    ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
              ),
            )
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('wight',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold
                            ),
                          ),
                          Text('$wight',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                heroTag: 'wight-',
                                mini: true,
                                child: Icon(

                                  Icons.remove,
                                ),

                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    wight++;
                                  });
                                },
                                heroTag: 'whight+',
                                mini: true,
                                child: Icon(

                                  Icons.add,
                                ),

                              ),

                            ],
                          )

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight:FontWeight.bold
                            ),
                          ),
                          Text('$age',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight:FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(

                                  Icons.remove,
                                ),

                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(

                                  Icons.add,
                                ),

                              ),

                            ],
                          )

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: MaterialButton(onPressed: (){

                double result = wight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => bmi_result(),
                  ),
                );

            },
              height: 50.0,
              child: Text(

                'CalCUATE',
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
  //var result = weight/ pow(hight/100,2);
  //print(result.round());
}
