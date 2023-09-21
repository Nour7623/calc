import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  double redius =10.0,
  @required function,
  @required text,
})
=>
    Container(
  width: width,

  height: 40.0,
  child: MaterialButton(
    onPressed: function

    ,
    child: Text(
        text.toUpperCase(),
        style:TextStyle(
          color: Colors.white,
        ),

    ),
  ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(redius),
        color: background,

      ),
);

Widget defaultFormField({
  @required controller,
  @required type,
  @required  validate,
  @required lable,
  @required prefix,


}) =>  TextFormField(
  controller: controller,
  keyboardType: TextInputType.emailAddress,

  onFieldSubmitted: (String value)
  {
    print(value);
  },
  validator: validate,



  decoration: InputDecoration(
    labelText: lable,
    prefixIcon: Icon(
      prefix,

    ),

    border: OutlineInputBorder(),
  ),
);