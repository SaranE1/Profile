// import 'package:firebase_signin/utils/color_utils.dart';
import 'package:flutter/material.dart';

// import '../utils/color_utils.dart';

// ignore: must_be_immutable
class Welcomepage extends StatelessWidget {
  String name,
      email,
      phone,
      address,
      city,
      state,
      dob,
      education,
      college,
      language;
  Welcomepage(
      {Key? key,
      required this.name,
      required this.email,
      required this.phone,
      required this.address,
      required this.state,
      required this.city,
      required this.dob,
      required this.education,
      required this.college,
      required this.language})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'YOUR PROFILE';
    // View(name,lname,fname,email,phone,address,dob,gender,qualify,desig,about);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
        backgroundColor: const Color.fromARGB(255, 216, 61, 113),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(
                  120, MediaQuery.of(context).size.height * 0.06, 130, 1),
              child: Column(children: <Widget>[
                Image.asset("assets/images/photo3.png"),
                const SizedBox(
                  height: 10,
                ),
              ])),
          const SizedBox(
            height: 15,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "NAME",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      ':  $name',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "EMAIL",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      ':  $email',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "PHONE",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(73, 0, 0, 0),
                    child: Text(
                      ': $phone',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "ADDRESS",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(54, 0, 0, 0),
                    child: Text(
                      ':  $address',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "CITY  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(85, 0, 0, 0),
                    child: Text(
                      ':  $city',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "STATE",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                    child: Text(
                      ':  $state',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "DOB",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(95, 0, 0, 0),
                    child: Text(
                      ':  $dob',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "EDUCATION",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                    child: Text(
                      ':  $education',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "COLLEGE",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                    child: Text(
                      ':  $college',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    "LANGUAGE",
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      ':  $language',
                      style: const TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [
//               hexStringToColor("CB2B93"),
//               hexStringToColor("9546C4"),
//               hexStringToColor("5E61F4")
//             ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
//             child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 // padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
//                 child: Column(children: <Widget>[
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
//                     child: Row(
//                       children: [
//                         const Text(
//                           "YOUR NAME :",
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
//                           child: Text(
//                             // "Your Namw :$name",
//                             name,
//                             style: const TextStyle(
//                                 fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                         Padding(
//                             padding: const EdgeInsets.fromLTRB(40, 60, 0, 0),
//                             child: Row(
//                               children: [
//                                 const Text(
//                                   "E-MAIL",
//                                   style: TextStyle(
//                                       fontSize: 18, color: Colors.white),
//                                 ),
//                                 Padding(
//                                   padding:
//                                       const EdgeInsets.fromLTRB(60, 60, 0, 0),
//                                   child: Text(
//                                     email,
//                                     style: const TextStyle(
//                                         fontSize: 18, color: Colors.white),
//                                   ),
//                                 ),
//                               ],
//                             )),
//                       ],
//                     ),
//                   )
//                 ]))));
//   }
// }


//         body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//               padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
//               child: Row(
//                 children: [
//                   const Text(
//                     "Name",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(54, 0, 0, 0),
//                     child: Text(
//                       name,
//                       style: const TextStyle(fontSize: 18),
//                     ),
//                   )
//                 ],
//               )),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('Phone:$phone'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('Address:$address'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('City:  $city'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('State :$state'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('Dob  :$dob'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('Education: $education'),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 15),
//             child: Text('College: $college'),
//           ),
//           Padding(
//               padding: const EdgeInsets.only(bottom: 15),
//               child: Text('Language: $language')),
//         ],
//       ),
//     ));
//   }
// }
