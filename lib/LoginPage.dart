import 'package:finalprojesi/MainPage.dart';
import 'package:flutter/material.dart';
import 'EPostaLoginPage.dart';
import 'Widgets/MyButton.dart';

void main(List<String> args) {
  return runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginOptions(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginOptions extends StatefulWidget {
  LoginOptions({super.key});

  @override
  State<LoginOptions> createState() => _LoginOptionsState();
}

class _LoginOptionsState extends State<LoginOptions> {
  bool debugCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Stok Takip Uygulaması')),
        body: Center(
          child: Column(
            children: [
              MyButton(
                  text_: "E-posta İle Giriş Yap",
                  onPressed_: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EPostaLogin()));
                  }),
              SizedBox(height: 20),
              MyButton(
                  text_: "Anonim Olarak Giriş Yap",
                  onPressed_: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
