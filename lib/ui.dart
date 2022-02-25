import 'package:flutter/material.dart';

class optionSelector extends StatefulWidget {
  const optionSelector({Key? key}) : super(key: key);

  @override
  _optionSelectorState createState() => _optionSelectorState();
}

class _optionSelectorState extends State<optionSelector> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Transform.translate(
            offset: Offset(430,150),
            child: Column(
        children: [

            Row(
              children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       Navigator.pushReplacementNamed(context, './whiteboard');
                     });
                   },
                   child: Container(
                       height: 150,
                       width: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.red,Colors.white],
                          ),
                          //color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2,color: Colors.black)
                        ),
                        child: Center(
                          child: Text('WhiteBoard'),
                        )),
                 ),
                SizedBox(width: 60),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushReplacementNamed(context, './SpeechToText');
                    });
                  },
                  child: Container(
                      height: 150,
                      width: 200,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.orange,Colors.white],
                            ),
                          //color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2,color: Colors.black)

                        ),
                        child: Center(
                          child: Text('speech to text'),
                        )),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushReplacementNamed(context, './AR');
                    });
                  },
                  child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                       // color: Colors.green,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.green,Colors.white],
                          ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2,color: Colors.black)
                      ),
                      child: Center(
                        child: Text('AR'),
                      )),
                ),
                SizedBox(width: 60),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushReplacementNamed(context, './Attendance');
                    });
                  },
                  child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                       // color: Colors.yellow,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.blueGrey,Colors.white],
                          ),
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(width: 2,color: Colors.black)
                      ),
                      child: Center(
                        child: Text('Attendance'),
                      )),
                ),
              ],
            ),

        ],
      ),
          )),
    );
  }
}
