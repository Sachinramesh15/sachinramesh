// import 'package:flutter/material.dart';
// class Profile extends StatefulWidget {
//   static const routeName = '/Profile';
//   final String name;
//   final String srn;
//   const Profile({Key? key,required this.name,required this.srn}) : super(key: key);
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       drawer: Drawer(),
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Center(
//             child: Text(
//                 "Flutter Application"
//             )
//         ),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "SACHIN RAMESH KULKARNI",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontFamily: 'Montserrat',
//                   color: Colors.pink,
//                   fontWeight: FontWeight.w400,//increases the size of the font
//                 ),
//               ),
//               Image.asset(
//                   'assets/images/GTR.jpg'
//               ),
//               Text(
//                 "SRN:PES2UG21CS449",
//                 style: TextStyle(
//                   fontSize: 30.0,
//                   fontFamily: 'Lato',
//                   color: Colors.lightBlue,
//                   fontWeight: FontWeight.w600,//increases the size of the font
//                 ),
//               ),
//               Image.asset(
//                   'assets/images/evo.jpg'
//               ),
//
//               ElevatedButton(
//                   onPressed:(){
//                     print('done');
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Text(
//                         'CLICK!'
//                     ),
//                   )
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const routeName = '/profile';
  final String name;
  final String srn;
  final String phoneNo;
  const Profile({Key? key,required this.name,required this.srn,required this.phoneNo}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String phoneNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'THIS STUDENT HAS BEEN REMOVED ',
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                'assets/images/evo.jpg',
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.srn,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              Text(
                widget.phoneNo,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xff2596be),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



