// import 'package:flutter/material.dart';
// import 'package:my_app/profile/profile.dart';
//
// import '';
//
// class landing extends StatefulWidget {
//   static const routeName='/profile';
//   const landing({Key? key}) : super(key: key);
//
//   @override
//   State<landing> createState() => _landingState();
// }
//
// class _landingState extends State<landing> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.symmetric(
//             vertical: MediaQuery.of(context).size.height *0.05,
//             horizontal: MediaQuery.of(context).size.width *0.1),
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//             children: [
//               Image.asset('assets/images/bmw.jpg'),
//               GestureDetector(
//                 onTap: (){
//                   //Navigator.pushNamed(context,Profile.routeName);
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(name: 'test',srn: 'PES2ug21cs449')));
//                 },
//                 child: ListTile(
//                   title:Text(
//                     'sachin'
//                   ),
//                   subtitle: Text(
//                     'PES2UG21CS449'
//                   ),
//                 ),
//               ),
//               ListTile(
//               title:Text(
//                 'sachin'
//               ),
//               subtitle: Text(
//                 'PES2UG21CS449'
//               ),
//           ),
//               ListTile(
//               title:Text(
//                   'sachin'
//               ),
//               subtitle: Text(
//                   'PES2UG21CS449'
//               ),
//           ),
//           ]
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:my_app/input/input.dart';
// import 'package:my_app/models/student.dart';
// import 'package:my_app/profile/profile.dart';
//
//
// class Landing extends StatefulWidget {
//   static const routeName = '/';
//   const Landing({Key? key}) : super(key: key);
//
//   @override
//   State<Landing> createState() => _LandingState();
// }
//
// class _LandingState extends State<Landing> {
//   List<Student> students = [
//     Student(name: 'sachin', srn: 'Pes2ug21cs449', phoneNo: '9999'),
//     Student(name: 'sachin', srn: 'Pes2ug21cs449', phoneNo: '9999'),
//     Student(name: 'sachin', srn: 'Pes2ug21cs449', phoneNo: '9999')
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.symmetric(
//               vertical: MediaQuery.of(context).size.height * 0.05,
//               horizontal: MediaQuery.of(context).size.width * 0.1),
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//             children: [
//               Image.asset(
//                 'assets/images/bmw.jpg',
//                 height: MediaQuery.of(context).size.width * 0.5,
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               ...students
//                   .map(
//                     (e) => GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 Profile(name: e.name, srn: e.srn,phoneNo: e.phoneNo,)));
//                   },
//                   child: ListTile(
//                     title: Text(e.name),
//                     subtitle: Text(e.srn),
//                     trailing: Icon(Icons.supervised_user_circle),
//                   ),
//                 ),
//               )
//                   .toList(),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, Input.routeName);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
// class  extends State<Landing>{
//
// }
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/models/student.dart';
import 'package:my_app/input/input.dart';
import 'package:my_app/profile/profile.dart';

import '../../redux/store.dart';

class Landing extends StatefulWidget {
  static const routeName = '/';
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}
class _LandingState extends State<Landing> {
  late BuildContext appStateContext;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        appStateContext = context;
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.05,
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Image.asset(
                    'assets/images/GTR.jpg',
                    height: MediaQuery.of(context).size.width * 0.5,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ...state.students!
                      .map(
                    //...students.map(
                        (e) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(
                              name: e.name,
                              srn: e.srn,
                              phoneNo: e.phoneNo,
                            ),
                          ),
                        );
                      },
                      child: ListTile(
                        title: Text(e.name),
                        subtitle: Text(e.srn),
                        trailing: Icon(Icons.supervised_user_circle),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //Navigator.pushNamed(context, Input.routeName);
              Navigator.pushReplacementNamed(context, Input.routeName);
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
