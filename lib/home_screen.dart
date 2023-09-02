import 'package:api_testing/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: const Text("Api Testing", style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
        body:  FutureBuilder(future:  Provider.of<ProductProvider>(context, listen: false).getProductData(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  return SizedBox(
                    height: double.infinity,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Card(
                              child: ListTile(

                                leading: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.network("${snapshot.data?[index].imagePath}")),
                                title: Text("${snapshot.data?[index].name}") , subtitle: Text("${snapshot.data?[index].price}"), ), );
                        }),
                  );
                }else if(snapshot.connectionState==ConnectionState.waiting){
                  return const Center(child: CircularProgressIndicator());
                } else if(        snapshot.hasError){
              return const Center(child: Text("Error"));
                }

                else {

                  return const SizedBox();
                }
              }
            )
            );
  }
}
