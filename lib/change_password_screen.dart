import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                  const Text(
                    'Back',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
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
            'Create new password',
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
            'Your new password must be different from previously used passwords.',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 15,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
          width: 300,
        ),
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.shield_outlined),
            labelText: 'New Password',
            helperText: 'Must be at least 8 characters.',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _buildTextField(),
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
          child: _buildButton(),
        )
      ],
    );
  }

  Widget _buildTextField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(Icons.shield_rounded),
        labelText: 'Confirm Password',
        helperText: 'Both passwords must match.',
      ),
    );
  }

  Widget _buildButton() {
    return TextButton(
      onPressed: null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Reset Password',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.9),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
