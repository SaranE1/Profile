// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_signin/screens/welcomepage.dart';
// import 'package:image_form_field/image_form_field.dart';
// import 'package:firebase_signin/screens/signin_screen.dart';
// import 'package:firebase_signin/screens/signup_screen.dart';

import 'package:flutter/material.dart';

import '../utils/color_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const Profile());
}

// void main() => runApp(const Profile());

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  // String email;
  // ignore: use_key_in_widget_constructors
  // Profile({required this.email});
  // MyCustomForm(email: _email.text);
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'PROFILE ';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: hexStringToColor("#FF00FF"),
        ),
        resizeToAvoidBottomInset: false,
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _education = TextEditingController();
  final TextEditingController _college = TextEditingController();
  final TextEditingController _language = TextEditingController();

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            reverse: true,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your full name',
                      labelText: 'Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      hintText: 'Enter your Email ID',
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  // Text('Email: ${_emailTextController.text}'),
                  TextFormField(
                    controller: _phone,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid phone number';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _address,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.home),
                      hintText: 'Enter your Address',
                      labelText: 'Address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _city,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_city),
                      hintText: 'Enter your City name',
                      labelText: 'City',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _state,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.business),
                      hintText: 'Enter your State name',
                      labelText: 'State',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _dob,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      hintText: 'Enter your date of birth',
                      labelText: 'Dob',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid date';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _education,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.school),
                      hintText: 'Enter your Education details',
                      labelText: 'Education',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid data';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _college,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on),
                      hintText: 'Enter your College / Universtiy Name',
                      labelText: 'College',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid data';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _language,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.computer),
                      hintText: 'Enter your Known languages',
                      labelText: 'Language',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter valid data';
                      }
                      return null;
                    },
                  ),

                  Container(
                    padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: FloatingActionButton(
                        child: const Text('Submit'),
                        backgroundColor: hexStringToColor("#FF00FF"),
                        onPressed: () {
                          String a = 'fyiy@gmail.com';
                          String b = 'saran@gmail.com';
                          String c = 'sd@gmail.com';
                          if (_email.text.contains(a) ||
                              _email.text.contains(b) ||
                              _email.text.contains(c)) {
                            // ignore: avoid_print
                            print('Already you are a user');

                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Already You are a user')));
                          } else {
                            FirebaseFirestore.instance
                                .collection('BioData')
                                .doc(_email.text)
                                .set({
                              'Name': _name.text,
                              'Email': _email.text,
                              'Phone': _phone.text,
                              'Address': _address.text,
                              'City': _city.text,
                              'State': _state.text,
                              'Dob': _dob.text,
                              'Education': _education.text,
                              'College': _college.text,
                              'Languages': _language.text
                            }).then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Welcomepage(
                                          name: _name.text,
                                          email: _email.text,
                                          phone: _phone.text,
                                          address: _address.text,
                                          state: _state.text,
                                          city: _city.text,
                                          dob: _dob.text,
                                          education: _education.text,
                                          college: _college.text,
                                          language: _language.text)));
                            });
                          }
                        }),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom)),
                ])));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: const Text('Submitted successfuly'),
        ),
      ),
    );
  }
}
