import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                color: Color.from(alpha: 1, red: 43, green: 33, blue: 123),
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blueAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.deepOrangeAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.pink,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.tealAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.cyanAccent,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class Square extends StatelessWidget {
//   late Color cor1;
//   late Color cor2;
//   late Color cor3;
//
//   Square(this.cor1, this.cor2, this.cor3);
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Padding(
//       padding: const EdgeInsets.only(left: 5, right: 10, top: 15),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//         ),
//         child: Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2.0,
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(25),
//                 child: Container(
//                   color: cor1,
//                   width: 120,
//                   height: 160,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2.0,
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(25),
//                 child: Container(
//                   color: cor2,
//                   width: 120,
//                   height: 160,
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 2.0,
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(25),
//                 child: Container(
//                   color: cor3,
//                   width: 120,
//                   height: 160,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Square(Colors.blue, Colors.black12, Colors.cyanAccent),
// Square(Colors.green, Colors.deepOrange, Colors.greenAccent),
// Square(Colors.yellow, Colors.red, Colors.greenAccent),
// Square(Colors.greenAccent, Colors.black, Colors.greenAccent)
