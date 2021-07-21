import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LOGIN NOW',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                Text(
                  'Please login to continue using our app',
                  style: TextStyle(fontSize: 12, color: Colors.grey[800]),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  '   Email ID',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                myTextFeild(false, "ENTER YOUR E-MAIL"),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '   Password',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                myTextFeild(true, 'ENTER YOUR PASSWORD'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '                                                            Forget password?',
                  style: TextStyle(color: Colors.purple),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: TextButton(
                        onPressed: () {
                          print('Hello');
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 1,
                        decoration: BoxDecoration(color: Colors.grey[700]),
                      ),
                      Text(
                        ' OR ',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 150,
                        height: 1,
                        decoration: BoxDecoration(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(214, 24, 119, 242),
                    ),
                    child: TextButton(
                      onPressed: () {
                        print('Hello');
                      },
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 65,
                            ),
                            Image.asset(
                              'images/Facebook-logo.png',
                              height: 35,
                              width: 35,
                            ),
                            Text(
                              "Login with FaceBook",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    Text(
                      "   Register now",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget myTextFeild(bool isPasssword, String hint) {
  return TextField(
    keyboardType: TextInputType.name,
    obscureText: isPasssword,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(10),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2,
        ),
      ),
      hintText: hint.toUpperCase(),
      hintStyle: TextStyle(
        color: Colors.grey[500],
        fontSize: 14,
      ),
    ),
  );
}
