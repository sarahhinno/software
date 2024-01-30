// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:software/auuth/login.dart';
import 'package:software/components/radioButtonWithImage.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/components/rounded_textField.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;

<<<<<<< HEAD
=======


>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
class signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _signupState();
  }
}

class _signupState extends State<signup> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
<<<<<<< HEAD
  bool passStrength = false;
  bool _obscureText = true;
  bool _obscureText2 = true;

=======
  bool passStrength=false;
  bool _obscureText = true;
  bool _obscureText2 = true;


>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
  String result = "";

///////////////////////////////////////////////////////////////////////////////////////////////
  Image image1 = Image.asset(
    "images/nurse.png",
    width: 150,
    height: 120,
  );
  Image image2 = Image.asset(
    "images/girl.png",
    width: 150,
    height: 120,
  );

  int selectedValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(selectedValue);
  }
<<<<<<< HEAD

=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
/////////////////////////////////////////////////////////////////////////////////////////////
  void handleRadioValueChanged(int value) {
    setState(() {
      selectedValue = value;
      print(selectedValue);
    });
  }

  Future<void> signupfun() async {
<<<<<<< HEAD
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: primaryLightColor,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text(
                "...جــاري الــتــحــقـق",
                style: TextStyle(fontFamily: 'myFont', fontSize: 18),
              ),
            ],
          ),
        );
      },
    );
    print("inside signup fun");
    final response = await http.post(Uri.parse(ip + "/sanad/signup"), body: {
      'id': idController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
      'type': selectedValue.toString()
    });

    Navigator.pop(context); // Close loading dialog

    if (response.statusCode == 200) {
      var mass = jsonDecode(response.body.toString());
      print("mass");
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(
              Icons.done,
              color: Colors.green,
            ),
            title: Text("نــجــاح",
                style: TextStyle(
                    fontFamily: 'myFont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            content: Text(
              "تــمـت الـعملــيـة بــنـجـاح، يـمـنـك الانـتـقال لـصـفـحة تـسـجـيـل الــدخــول",
              style: TextStyle(fontFamily: 'myFont', fontSize: 18),
              textAlign: TextAlign.right,
            ),
=======

showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: primaryLightColor,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("...جــاري الــتــحــقـق",style: TextStyle(fontFamily: 'myFont',fontSize: 18),),
          ],
        ),
      );
    },
  );
    print("inside signup fun");
    final response = await http
          .post(Uri.parse(ip+"/sanad/signup"), body: {
        'id': idController.text.trim(),
        'email': emailController.text.trim(),
        'password':passwordController.text.trim(),
        'type':selectedValue.toString()
      });

      Navigator.pop(context); // Close loading dialog

      if(response.statusCode==200){
        var mass = jsonDecode(response.body.toString());
        print("mass");
        showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(Icons.done,color: Colors.green,),
            title: Text("نــجــاح",style: TextStyle(fontFamily: 'myFont',fontSize: 20,fontWeight: FontWeight.bold)),
            content: Text("تــمـت الـعملــيـة بــنـجـاح، يـمـنـك الانـتـقال لـصـفـحة تـسـجـيـل الــدخــول",style: TextStyle(fontFamily: 'myFont',fontSize: 18),textAlign: TextAlign.right,),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
<<<<<<< HEAD
    } else if (response.statusCode == 501) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
            title: Text("خــطــأ",
                style: TextStyle(
                    fontFamily: 'myFont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            content: Text(
              "رقـم الـهـويـة هـذا مـسـتـخدم من قـبــل فـي هـذا الــنظـام",
              style: TextStyle(fontFamily: 'myFont', fontSize: 18),
              textAlign: TextAlign.right,
            ),
=======
      }else if(response.statusCode==501){
        showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(Icons.close,color: Colors.red,),
            title: Text("خــطــأ",style: TextStyle(fontFamily: 'myFont',fontSize: 20,fontWeight: FontWeight.bold)),
            content: Text("رقـم الـهـويـة هـذا مـسـتـخدم من قـبــل فـي هـذا الــنظـام",style: TextStyle(fontFamily: 'myFont',fontSize: 18),textAlign: TextAlign.right,),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
<<<<<<< HEAD
    } else {
      var mass = jsonDecode(response.body.toString());
      print(mass);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
            title: Text("خــطــأ",
                style: TextStyle(
                    fontFamily: 'myFont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            content: Text("رقـم الــهويــة هــذا غـيـر مـوجـود فـي الـنــظــام",
                style: TextStyle(fontFamily: 'myFont', fontSize: 18)),
=======
      }
      else{
        var mass = jsonDecode(response.body.toString());
        print(mass);
        showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            icon: Icon(Icons.close,color: Colors.red,),
            title: Text("خــطــأ",style: TextStyle(fontFamily: 'myFont',fontSize: 20,fontWeight: FontWeight.bold)),
            content: Text("رقـم الــهويــة هــذا غـيـر مـوجـود فـي الـنــظــام",style: TextStyle(fontFamily: 'myFont',fontSize: 18)),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
<<<<<<< HEAD
    }
  }

  void check() {
    passwordStrength(passwordController.text);
    print("inside check fun");
    if (idController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmController.text.isEmpty) {
      setState(() {
        result = "يـجــب تــعبـئــة جــمـيـع الــحـقــول";
      });
    } else if (selectedValue == 0) {
      setState(() {
        result = "يــجـب أن تــخـتار طــفــل أو أخـصـائـيـة";
      });
    } else if (idController.text.length < 9) {
      setState(() {
        result = "رقــم الــهـويــة أقـل مــن 9 أرقــام";
      });
    } else if (passStrength == false) {
      setState(() {
        result =
            "كـلـمة الـمرور ضـعـيـفـة،يـجب أن تـحتـوي عـلى رمـوز و أرقـام وأحـرف";
      });
    } else if (passwordController.text != confirmController.text) {
      setState(() {
        result = "تـأكــيـد كــلـمـة الـمرور لا تـسـاوي كـلـمـة الــمرور";
      });
    } else {
      signupfun();
    }

=======
      }
  }

  void check(){
    passwordStrength(passwordController.text);
    print("inside check fun");
    if (idController.text.isEmpty || emailController.text.isEmpty || passwordController.text.isEmpty || confirmController.text.isEmpty) {
      setState(() {
        result = "يـجــب تــعبـئــة جــمـيـع الــحـقــول";
      });
      
    } else if(selectedValue==0){
      setState(() {
        result="يــجـب أن تــخـتار طــفــل أو أخـصـائـيـة";
      });

    }else if (idController.text.length < 9) {
      setState(() {
        result = "رقــم الــهـويــة أقـل مــن 9 أرقــام";

      });      
    }
    else if(passStrength==false){
      setState(() {
        result =
          "كـلـمة الـمرور ضـعـيـفـة،يـجب أن تـحتـوي عـلى رمـوز و أرقـام وأحـرف";
      });

    }else if (passwordController.text!=confirmController.text) {
      setState(() {
        result="تـأكــيـد كــلـمـة الـمرور لا تـسـاوي كـلـمـة الــمرور";

      });
    }
    else{
      signupfun();
    }
    
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
    print("mmm");
  }

  void passwordStrength(String? pass) {
    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasDigits = false;
    bool hasSpecialCharacters = false;

    for (int i = 0; i < pass!.length; i++) {
      final char = pass[i];
      if (char == char.toUpperCase() && char != char.toLowerCase()) {
        hasUppercase = true;
      } else if (char == char.toLowerCase() && char != char.toUpperCase()) {
        hasLowercase = true;
      } else if (char.contains(RegExp(r'\d'))) {
        hasDigits = true;
      } else {
        hasSpecialCharacters = true;
      }
    }
    if (hasUppercase &&
        hasLowercase &&
        hasDigits &&
        hasSpecialCharacters &&
        pass.length >= 8) {
      result = " ";
<<<<<<< HEAD
      passStrength = true;
=======
      passStrength=true;
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
    } else {
      result =
          "كـلـمة الـمرور ضـعـيـفـة،يـجب أن تـحتـوي عـلى رمـوز و أرقـام وأحـرف";
    }
  }

<<<<<<< HEAD
  Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text("Please wait..."),
            ],
          ),
        );
      },
    );
  }
=======

Future<void> showLoadingDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text("Please wait..."),
          ],
        ),
      );
    },
  );
}
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
<<<<<<< HEAD
              // Positioned(
              //     top: 0,
              //     right: 0,
              //     child: Image.asset(
              //       "images/login_top_right.png",
              //       width: size.width * 0.42,
              //     )),
              // Positioned(
              //     bottom: 0,
              //     left: 0,
              //     child: Image.asset(
              //       "images/login_bottom_left.png",
              //       width: size.width,
              //     )),
=======
              Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    "images/login_top_right.png",
                    width: size.width * 0.42,
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    "images/login_bottom_left.png",
                    width: size.width,
                  )),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
              Container(
                  width: double.infinity,
                  height: size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
<<<<<<< HEAD
                       // SizedBox(height: 50),
=======
                        SizedBox(height: 50),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                        Text(
                          "إنــشـــاء حــســاب  ",
                          style: TextStyle(
                              fontFamily: 'myFont',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff800080)),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
<<<<<<< HEAD
                            Spacer(),
=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                            Expanded(
                              child: CustomImageRadioButton(
                                text: "أخــصـائـيـة",
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: handleRadioValueChanged,
                                image: image1, // Replace with your image path
                              ),
                            ),
                            Expanded(
                              child: CustomImageRadioButton(
                                text: "طــفــل",
                                value: 2,
                                groupValue: selectedValue,
                                onChanged: handleRadioValueChanged,
                                image: image2, // Replace with your image path
                              ),
                            ),
<<<<<<< HEAD
                            Spacer(),
=======
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          result,
                          style: TextStyle(
<<<<<<< HEAD
                              color: Colors.red,
                              fontFamily: 'myFont',
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 700,
                          child: RoundedTextField(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.right,
                              controller: idController,
                              onChanged: (value) {
                                setState(() {
                                  result = " ";
                                });
                              },
                              decoration: InputDecoration(
                                hintText: " رقــم الـهــويــة ",
                                hintStyle: TextStyle(fontFamily: 'myFont'),
                                suffixIcon: Icon(
                                  Icons.numbers,
                                  color: Color(0xff800080),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        ///////////////////////////////////////////////////////
                        Container(
                          width: 700,
                          child: RoundedTextField(
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.right,
                              controller: emailController,
                              onChanged: (value) {
                                setState(() {
                                  result = " ";
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "  البـريــد الإلــكـتـرونــي ",
                                hintStyle: TextStyle(fontFamily: 'myFont'),
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff800080),
                                ),
                                border: InputBorder.none,
                              ),
=======
                              color: Colors.red, fontFamily: 'myFont',fontWeight: FontWeight.bold),
                        ),
                        RoundedTextField(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.right,
                            controller: idController,
                            onChanged: (value) {
                              setState(() {
                                  result=" ";
                              });
                            },
                            decoration: InputDecoration(
                              hintText: " رقــم الـهــويــة ",
                              hintStyle: TextStyle(fontFamily: 'myFont'),
                              suffixIcon: Icon(
                                Icons.numbers,
                                color: Color(0xff800080),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        ///////////////////////////////////////////////////////
                        RoundedTextField(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.right,
                            controller: emailController,
                            onChanged: (value) {
                              setState(() {
                                  result=" ";
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "  البـريــد الإلــكـتـرونــي ",
                              hintStyle: TextStyle(fontFamily: 'myFont'),
                              suffixIcon: Icon(
                                Icons.email,
                                color: Color(0xff800080),
                              ),
                              border: InputBorder.none,
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                            ),
                          ),
                        ),

                        //////////////////////////////////////////////////
<<<<<<< HEAD
                        Container(
                          width: 700,
                          child: RoundedTextField(
                            child: TextField(
                              obscureText: _obscureText,
                              textAlign: TextAlign.right,
                              controller: passwordController,
                              onSubmitted: (value) => passwordStrength(value),
                              onChanged: (value) {
                                setState(() {
                                  result = " ";
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "  كــلـمــة الــمـرور ",
                                hintStyle: TextStyle(fontFamily: 'myFont'),
                                suffixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff800080),
                                ),
                                icon: Material(
                                  type: MaterialType.transparency,
                                  child: IconButton(
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        //////////////////////////////////////////////////////////////////
                        Container(
                          width: 700,
                          child: RoundedTextField(
                            child: TextField(
                              obscureText: _obscureText2,
                              textAlign: TextAlign.right,
                              controller: confirmController,
                              onChanged: (value) {
                                setState(() {
                                  result = " ";
                                });
                              },
                              decoration: InputDecoration(
                                hintText: " تـأكــيـد كــلـمــة الــمـرور ",
                                hintStyle: TextStyle(fontFamily: 'myFont'),
                                suffixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff800080),
                                ),
                                icon: Material(
                                  type: MaterialType.transparency,
                                  child: IconButton(
                                    icon: Icon(
                                      _obscureText2
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText2 = !_obscureText2;
                                      });
                                    },
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 500,
                          child: RoundedButton(
                            text: " إنــشــاء حــســاب",
                            press: () => {check()},
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

=======
                        RoundedTextField(
                          child: TextField(
                            obscureText: _obscureText,
                            textAlign: TextAlign.right,
                            controller: passwordController,
                            onSubmitted: (value)=>passwordStrength(value),
                            onChanged: (value) {
                              setState(() {
                                  result=" ";
                              });
                            },
                            decoration: InputDecoration(
                              hintText: "  كــلـمــة الــمـرور ",
                              hintStyle: TextStyle(fontFamily: 'myFont'),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff800080),
                              ),
                              icon: Material(
                                type: MaterialType.transparency,
                                child: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                        color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        //////////////////////////////////////////////////////////////////
                        RoundedTextField(
                          child: TextField(
                            obscureText: _obscureText2,
                            textAlign: TextAlign.right,
                            controller: confirmController,
                            onChanged: (value) {
                              setState(() {
                                  result=" ";
                              });
                            },
                            decoration: InputDecoration(
                              hintText: " تـأكــيـد كــلـمــة الــمـرور ",
                              hintStyle: TextStyle(fontFamily: 'myFont'),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff800080),
                              ),
                              icon: Material(
                                type: MaterialType.transparency,
                                child: IconButton(
                                  icon: Icon(
                                    _obscureText2
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                        color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText2 = !_obscureText2;
                                    });
                                  },
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                          text: " إنــشــاء حــســاب",
                          press: () => {check()},
                        ),
                        SizedBox(
                          height: 20,
                        ),
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                            child: Text(
                              "لــديــك حــســاب بـالفـعـل؟",
                              style: TextStyle(
                                  fontFamily: 'myFont',
                                  fontSize: 18,
                                  color: Color(0xff800080),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 591642d12a619d71ab1f8d8fdfcf1d3775d596a2
