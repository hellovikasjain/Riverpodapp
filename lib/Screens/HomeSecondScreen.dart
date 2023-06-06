import 'package:apps/Providers/HomeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeSecomdScreen extends ConsumerWidget {
  const HomeSecomdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ,WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ref.watch(homeProvider).ini,
      body: Center(
        child: Text("Second Screen ",style: TextStyle(
          color: ref.watch(homeProvider).textColor,
          fontSize: 30,
        ),),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(homeProvider).post();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
