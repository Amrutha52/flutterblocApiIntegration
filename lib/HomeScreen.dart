import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocapiintegration/products/product_bloc.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.plist!.length,
                itemBuilder: (BuildContext context, int index)
                {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('${state.plist![index].thumbnail}'),
                    ),
                    title: Text('${state.plist![index].title}'),
                    subtitle: Text('${state.plist![index].price}'),
                  );
                }
            );
          }
      ),
    );
  }
}
