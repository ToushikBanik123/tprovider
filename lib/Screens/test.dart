import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ptest/Provider/numberProvider.dart';

class test extends StatelessWidget {
  test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),

          Consumer<numberProvider>(builder: (context,provider,child){
            return Text(provider.number.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            );
          }),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<numberProvider>(builder: (context,p,child){
                  return GestureDetector(
                    onTap: (){
                      p.numberPlusOne();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(Icons.add),
                    ),
                  );
                }),
                Consumer<numberProvider>(builder: (context,provider,child){
                  return GestureDetector(
                    onTap: (){
                      provider.numberMinusOne();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(Icons.remove),
                    ),
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}