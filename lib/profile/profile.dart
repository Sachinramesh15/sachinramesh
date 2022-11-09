import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  static const routeName = '/Profile';
  final String name;
  final String srn;
  const Profile({Key? key,required this.name,required this.srn}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
            child: Text(
                "Flutter Application"
            )
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SACHIN RAMESH KULKARNI",
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Montserrat',
                  color: Colors.pink,
                  fontWeight: FontWeight.w400,//increases the size of the font
                ),
              ),
              Image.asset(
                  'assets/images/GTR.jpg'
              ),
              Text(
                "SRN:PES2UG21CS449",
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lato',
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.w600,//increases the size of the font
                ),
              ),
              Image.asset(
                  'assets/images/evo.jpg'
              ),

              ElevatedButton(
                  onPressed:(){
                    print('done');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        'CLICK!'
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}




