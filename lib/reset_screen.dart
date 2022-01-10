import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: <Widget>[
            SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Icon(
                    Icons.arrow_back,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Back'),
                  Expanded(
                    child: Container(),
                  ),
                  const Icon(Icons.help_center_rounded),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: _buildContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 50,
          width: 300,
          child: Text(
            'Reset Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: Text(
            'Enter the email associated with your account and we\'ll send an email with instructions to reset your password.',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
          width: 300,
        ),
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(Icons.mail), labelText: 'Email address'),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 0.1,
                blurStyle: BlurStyle.solid,
              ),
            ],
          ),
          child: TextButton(
            onPressed: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Send Instructions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.9)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
