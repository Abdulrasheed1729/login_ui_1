import 'package:flutter/material.dart';

class CheckMailScreen extends StatefulWidget {
  const CheckMailScreen({Key? key}) : super(key: key);

  @override
  _CheckMailScreenState createState() => _CheckMailScreenState();
}

class _CheckMailScreenState extends State<CheckMailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 80,
          ),
          Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.mail_sharp,
                size: 80,
                color: Colors.deepPurple,
              )),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Check your mail',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: Text(
              'We have sent a password recovery instructions to your email.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildButton(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Skip, I\'ll comfirm later',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          _buildFootText(),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      height: 50,
      width: 200,
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
              'Open email app',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.9),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFootText() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Did not recieve the email? Check your spam filter, or',
          style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 15,
              fontWeight: FontWeight.bold),
          children: const <TextSpan>[
            TextSpan(
              text: ' try another email address',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.deepPurple,
              ),
            ),
          ]),
    );
  }
}
