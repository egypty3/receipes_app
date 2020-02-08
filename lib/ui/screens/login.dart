import 'package:flutter/material.dart';
import 'package:receipes_app/ui/widgets/google_sign_in_button.dart';
import 'package:receipes_app/state_widget.dart';
class LoginScreen extends StatelessWidget {


  BoxDecoration _buildBackground() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/brooke-lark-wMzx2nBdeng-unsplash.jpg"),
        fit: BoxFit.cover,
      )
    );
  }
  @override
  Widget build(BuildContext context) {

    Text _buildText() {
      return Text(
        'Recepies',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: _buildBackground(),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  _buildText(),
                  SizedBox(height: 50.0,),
                  GoogleSignInButton( // New code

                    onPressed: () => StateWidget.of(context).signInWithGoogle(),
                  ), // New code
                ]
            ),

        ),
      ),

    );
  }
}
