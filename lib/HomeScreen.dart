import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocapiintegration/products/product_bloc.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.plist!.length == null)
              {
                return CircularProgressIndicator();
              }
            else
              {
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

          }
      ),
    );
  }
}
