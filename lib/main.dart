import 'package:flutter/material.dart';

void main()
{
  runApp(loginpage());
}
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    return MaterialApp(
      home: Scaffold(
        body:Form(
          key: formkey,
          child: Stack(
            children: [
              Container(
                height:900,
                color: Colors.blue[100],
              ),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  //color: Colors.pink,
                  padding:EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text('login',style: TextStyle(
                        fontSize: 25),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      //Image.asset('images/Rajsee.jpg')

                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('images/Rajsee.jpg')
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      TextFormField(
                        validator:(value){
                          //print('${value}');
                          if(value!.length!=10)
                            {
                              return'Number is not current';
                            }
                          else
                            {
                              return null;
                            }
                        },
                        keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Number',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(80)
                            )
                          ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      /*TextFormField(
                        validator:(value){
                          //print('${value}');
                          if(value!.length!=10)
                          {
                            return'Number is not current';
                          }
                          else
                          {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Number',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(80)
                            )
                        ),
                      ),*/
                      /*SizedBox(
                        height: 40,
                      ),*/
                     ElevatedButton(
                         onPressed:(){
                           if(formkey.currentState!.validate()){
                             print('hureeee');
                           }
                           //print('on submit');
                         },
                         child:Text('Submit')
                     ),

                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: (){
                          print('Sign Up page');
                        },
                        child: Text('Sign Up',style: TextStyle(
                            fontSize: 35),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
