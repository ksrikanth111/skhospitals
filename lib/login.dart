import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/flutter_otp.dart';
import 'package:skhospitals/home.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isotpSent=false;
  String mobileNumber;
  int enteredOtp;
 // FlutterOtp fotp=FlutterOtp();
  bool isCorrectOtp=true;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
     backgroundColor:Colors.brown[200],
      body: Center(
        child: Container(
          height: height*0.4,
          width: width*0.95,
          child: ListView(
            children: [
              
                 Text('Sk Hospitals',textAlign: TextAlign.center,),
                 SizedBox(height: 20,),
                 Container(
                    height: height*0.3,
                    width: width*0.8,
                    
                    child: Card(
                      elevation: 4.0,
                      color:Colors.orange,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(50)
                              )
                            ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ListView(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              
                              
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(child: Text('phone number: ')),
                                      Expanded(child: TextField(
                                        onChanged: (val){
                                          setState(() {
                                            mobileNumber=val;
                                          });
                                        },
                                      )),
                                      isotpSent?Text('otpsentsuccessfully'):FlatButton(
                                      onPressed: (){
                                        setState(() {
                                         // fotp.sendOtp(mobileNumber);
                                          isotpSent=true;
                                        });
                                      }, 
                                      child: Expanded(child: Text('send otp'))
                                      )
                                    ],
                                  ),
                                
                                   Row(
                                    children: [
                                      Text('otp: '),
                                      Expanded(child: TextField(
                                        onChanged: (val){
                                          enteredOtp=int.parse(val);
                                        },
                                      ))
                                    ],
                                  ),
                                SizedBox(height: 20,),
                                MaterialButton(
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Text('Login'),
                                  onPressed: (){
                                 //   isCorrectOtp=fotp.resultChecker(enteredOtp);
                                    if (isCorrectOtp) {
                                      Navigator.pushReplacement(
                                        context,
                                        CupertinoPageRoute(builder: (ctx)=>HomePage())
                                      );
                                    }
                                    else{
                                      showDialog(
                                        context: context,
                                        builder: (context){
                                            return CupertinoAlertDialog(
                                              title: Text('Error'),
                                              content: Text('Entered otp wrong'),
                                              actions: [
                                                FlatButton(
                                                  onPressed: ()=>Navigator.pop(context),
                                                  child: Text('ok')
                                                 )
                                              ],
                                            );
                                        }
                                      );
                                    }
                                  }
                                )
                              ],
                            ),
                          ),
                        ),
                      
                    
                  ),
                ),
                 
                 ]
              ),
            
                   
              ),
      )
      
    );
  }
}