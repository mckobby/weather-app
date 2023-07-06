import 'package:flutter/material.dart';
import 'package:weather_app/index_page.dart';
import 'package:weather_app/signup_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

final _formkey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool passwordObscured = true;

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height*0.05),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "THE",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "WEATHER",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        final validEmail = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (value.isEmpty) {
                          return "Enter email";
                        } else if (!validEmail) {
                          return "Incorrect email";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "eg. johndoe@example.com",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    TextFormField(
                      obscureText: passwordObscured,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter password";
                        } else if (value.length < 8) {
                          return "Password should not be less than 8 characters";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordObscured = !passwordObscured;
                            });
                          },
                          icon: Icon(
                            passwordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        hintText: "Should be at least 8 characters",
                        filled: true,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute<void>(
                          //     builder: (BuildContext context) => const MyPage(),
                          //   ),
                          // );
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        width * 0.15,
                        25,
                        width * 0.15,
                        10,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            Colors.amber,
                          ),
                        ),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            setState(
                              () {
                                Navigator.of(context).push(
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const IndexPage(),
                                  ),
                                );
                                emailController.clear();
                                passwordController.clear();
                              },
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Not registered yet? Click here to",
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 15,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const SignupPage(),
                              ),
                            );
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
