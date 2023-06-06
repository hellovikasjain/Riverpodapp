import 'package:apps/Providers/HomeScreenProvider.dart';
import 'package:apps/Screens/HomeSecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
 class HomeScreen extends ConsumerWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context, WidgetRef ref) {
      var s= ref.watch(homeProvider);
     return Scaffold(
       backgroundColor: s.ini,
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           s.post();
         },
         child: Icon(Icons.add),
       ),
       body: Center(
         child: InkWell(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeSecomdScreen()));
           },
           child: Text("Press Here",style: TextStyle(
             color: s.textColor,
             fontSize: 20,
           ),),
         ),
       ),
     );
   }
 }

