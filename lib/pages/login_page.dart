import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/images/login_image.png', fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Text('Welcome', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter UserName',
                    labelText: 'UserName'
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password'
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed:(){} ,
                    child: Text('Log In')
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
