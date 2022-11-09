import 'package:flutter/material.dart';
import 'package:my_app/profile/profile.dart';

import '';

class landing extends StatefulWidget {
  static const routeName='/profile';
  const landing({Key? key}) : super(key: key);

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height *0.05,
            horizontal: MediaQuery.of(context).size.width *0.1),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Image.asset('assets/images/bmw.jpg'),
              GestureDetector(
                onTap: (){
                  //Navigator.pushNamed(context,Profile.routeName);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(name: 'test',srn: 'PES2ug21cs449')));
                },
                child: ListTile(
                  title:Text(
                    'sachin'
                  ),
                  subtitle: Text(
                    'PES2UG21CS449'
                  ),
                ),
              ),
              ListTile(
              title:Text(
                'sachin'
              ),
              subtitle: Text(
                'PES2UG21CS449'
              ),
          ),
              ListTile(
              title:Text(
                  'sachin'
              ),
              subtitle: Text(
                  'PES2UG21CS449'
              ),
          ),
          ]
          ),
        ),
      ),
    );
  }
}
