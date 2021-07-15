import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Calc()
  ));
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String hnum="";
  String lnum="";
  String temp_num="";
  double? num1;
  double? num2;
  double? op;
  double? result;
  bool flag=false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.cyan[900],
        ),
       backgroundColor: Colors.blueGrey[900],
       body:Column(
           crossAxisAlignment: CrossAxisAlignment.end,
         children:[
           Expanded(child: SizedBox()),
           Text(hnum,style:TextStyle(color:Colors.grey,fontSize: 30)),
           Text(lnum,style:TextStyle(color:Colors.white,fontSize: 50)),
           SizedBox(height:100),
           Expanded(
             flex:1,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[
                 Expanded(
                   child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           hnum="";
                           lnum="";
                           temp_num="";
                           num1=null;
                           num2=null;
                           flag=false;
                           op=null;
                           result=null;
                         });
                       },
                       child: Text("AC",style:TextStyle(fontSize:20)),
                     style: ElevatedButton.styleFrom(
                       shape: CircleBorder(),
                       padding:EdgeInsets.all(25.0),
                       primary: Colors.blueGrey[400]
                     ),
                   ),
                 ),
                 Expanded(
                   child: ElevatedButton(
                     onPressed: (){
                       setState(() {
                         if(lnum=="")
                           {}
                         else
                           {
                             lnum=lnum.substring(0,lnum.length-1);
                           }
                       });
                     },
                     child: Icon(Icons.backspace_outlined),
                     style: ElevatedButton.styleFrom(
                         shape: CircleBorder(),
                         padding:EdgeInsets.all(25.0),
                         primary: Colors.blueGrey[400]
                     ),
                   ),
                 ),
                 Expanded(
                   child:ElevatedButton(
                      onPressed: (){},
                      child: Text("%",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding:EdgeInsets.all(25.0),
                          primary: Colors.white
                      ),
                    ),
                 ),
                 Expanded(
                   child: ElevatedButton(
                     onPressed: (){
                       setState(() {
                         num1=double.parse(lnum);
                         lnum=lnum+"/";
                         op=1;
                         flag=true;
                       });
                     },
                     child: Text("/",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                     style: ElevatedButton.styleFrom(
                         shape: CircleBorder(),
                         padding:EdgeInsets.all(25.0),
                         primary: Colors.white
                     ),
                   ),
                 ),
               ]
             ),
           ),
           SizedBox(height:10),
           Expanded(
             flex:1,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"7";
                               if(flag==true)
                                 temp_num=temp_num+"7";
                         });
                       },
                       child: Text("7",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"8";
                           if(flag==true)
                             temp_num=temp_num+"8";
                         });
                       },
                       child: Text("8",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child:ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"9";
                           if(flag==true)
                             temp_num=temp_num+"9";
                         });
                       },
                       child: Text("9",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           num1=double.parse(lnum);
                           lnum=lnum+"*";
                           op=2;
                           flag=true;
                         });
                       },
                       child: Text("x",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.white
                       ),
                     ),
                   ),
                 ]
             ),
           ),
           SizedBox(height:10),
           Expanded(
             flex:1,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"4";
                           if(flag==true)
                             temp_num=temp_num+"4";
                         });
                       },
                       child: Text("4",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"5";
                           if(flag==true)
                             temp_num=temp_num+"5";
                         });
                       },
                       child: Text("5",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child:ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"6";
                           if(flag==true)
                             temp_num=temp_num+"6";
                         });
                       },
                       child: Text("6",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           num1=double.parse(lnum);
                           lnum=lnum+"-";
                           op=3;
                           flag=true;
                         });
                       },
                       child: Text("-",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.white
                       ),
                     ),
                   ),
                 ]
             ),
           ),
           SizedBox(height:10),
           Expanded(
             flex:1,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"1";
                           if(flag==true)
                             temp_num=temp_num+"1";
                         });
                       },
                       child: Text("1",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"2";
                           if(flag==true)
                             temp_num=temp_num+"2";
                         });
                       },
                       child: Text("2",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child:ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"3";
                           if(flag==true)
                             temp_num=temp_num+"3";
                         });
                       },
                       child: Text("3",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           num1=double.parse(lnum);
                           lnum=lnum+"+";
                           op=4;
                           flag=true;
                         });
                       },
                       child: Text("+",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.white
                       ),
                     ),
                   ),
                 ]
             ),
           ),
           SizedBox(height:10),
           Expanded(
             flex:1,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:[
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){},
                       child: Text("±",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+"0";
                           if(flag==true)
                             temp_num=temp_num+"0";
                         });
                       },
                       child: Text("0",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child:ElevatedButton(
                       onPressed: (){
                         setState(() {
                           lnum=lnum+".";
                           if(flag==true)
                             temp_num=temp_num+".";
                         });
                       },
                       child: Text(".",style:TextStyle(fontSize:20)),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.blueGrey[900],
                           elevation: 0.0
                       ),
                     ),
                   ),
                   Expanded(
                     child: ElevatedButton(
                       onPressed: (){
                         setState(() {
                           num2=double.parse(temp_num);
                           if(op==1)
                             {
                               result=(num1!/num2!);
                             }
                           else if(op==2)
                             result=num1!*num2!;
                           else if(op==3)
                             result=num1!-num2!;
                           else if(op==4)
                             result=num1!+num2!;
                           String temp_result;
                           if(result!-result!.round()==0)
                             temp_result=result!.round().toString();
                           else
                             temp_result=result.toString();
                           hnum=lnum;
                           if(temp_result.length>13)
                             lnum=temp_result.substring(0,temp_result.length-5);
                           else
                             lnum=temp_result;
                           num2=null;
                           temp_num="";
                         });
                       },
                       child: Text("=",style:TextStyle(fontSize: 20,color:Colors.greenAccent[400])),
                       style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding:EdgeInsets.all(25.0),
                           primary: Colors.white
                       ),
                     ),
                   ),
                 ]
             ),
           )
         ]
       )

    );
  }
}

