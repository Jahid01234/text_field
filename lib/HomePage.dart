import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {

  String text = " "; // when onchanged function called, store the value on it
  bool _isvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Text Field Widget", style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // The start 1st text Field
              TextField(
                decoration: InputDecoration(
                   hintText: "Enter your password",
                   hintStyle: TextStyle(color: Colors.blue),
                   labelText: "Password",
                   labelStyle: TextStyle(color: Colors.redAccent),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     //borderSide: BorderSide.none
                   ),

                    enabledBorder:OutlineInputBorder(
                        borderSide:BorderSide(color: Colors.red)
                    ),

                   focusedBorder: OutlineInputBorder(
                     borderSide:BorderSide(color: Colors.indigoAccent,width: 2)
                  ),

                  prefixIcon: Icon(Icons.lock,color: Colors.cyan,size: 20,),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _isvisible = !_isvisible;
                      });
                    },
                    icon:Icon(Icons.remove_red_eye,color: Colors.greenAccent,size: 20,)
                  ),
                  errorText: text.isEmpty?"Empty":null
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isvisible,
                obscuringCharacter: "*",
                maxLength: 10,
                onChanged: (value){
                  text = value;
                },
                onSubmitted: (value){
                 setState(() {
                   text = value;
                 });
                },
              ),
              // The End 1st text Field

            ],
          ),
        ),
      )


    );
  }
}
