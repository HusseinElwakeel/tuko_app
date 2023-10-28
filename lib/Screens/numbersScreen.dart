
import 'package:flutter/material.dart';
import 'package:tuko_app/Component/item%20Widget.dart';
import 'package:tuko_app/models/Number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<Number> numbers = const[
    Number(image: "assets/images/numbers/number_one.png", enNumber: "One", JPNumber: "ichi"),
    Number(image: "assets/images/numbers/number_two.png", enNumber: "Two", JPNumber: "Ni"),
    Number(image: "assets/images/numbers/number_three.png", enNumber: "Three", JPNumber: "San"),
    Number(image: "assets/images/numbers/number_four.png", enNumber: "Four", JPNumber: "Shi"),
    Number(image: "assets/images/numbers/number_five.png", enNumber: "Five", JPNumber: "Go"),
    Number(image: "assets/images/numbers/number_six.png", enNumber: "Six", JPNumber: "Roku"),
    Number(image: "assets/images/numbers/number_seven.png", enNumber: "Seven", JPNumber: "Sebun"),
    Number(image: "assets/images/numbers/number_eight.png", enNumber: "Eight", JPNumber: "Hachi"),
    Number(image: "assets/images/numbers/number_nine.png", enNumber: "Nine", JPNumber: "Kyū"),
    Number(image: "assets/images/numbers/number_ten.png", enNumber: "Ten", JPNumber: "Jū"),
  ];
  // final Number One = const Number(
  //     image: "assets/images/numbers/number_one.png",
  //     enNumber: "One",
  //     JPNumber:  "ichi");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff412e28),
        title: Text("Numbers"),
      ),
      body:
        ListView(
          children:
          getList(numbers),


        )




    );
  }
  // list return list of item and (it's input)
 List<item> getList (List<Number> numbers ){
    List<item> listItem =[];
    for ( int i =0;i< numbers.length;i++ ){
      listItem.add(item(number: numbers[i]));
    }
    return listItem;
 }
}


