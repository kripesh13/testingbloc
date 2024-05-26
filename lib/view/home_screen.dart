import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testingbloc/view/details_screen.dart';

import '../bloc/Home_bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homebloc = BlocProvider.of<HomeBloc>(context);

    print('build vayo hai');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homebloc,
        buildWhen: (previous, current) {
          return true;
        },
        listener: (context, state) {
          if (state.count == 5) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(
                  value: state.count,
                );
              },
            ));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Count is ${state.count}')),
            );
          }
        },
        builder: (context, state) {
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    homebloc.add(OnAddEvent());
                  },
                  child: Icon(Icons.add_circle),
                ),
                Text(state.count.toString()),
                GestureDetector(
                    onTap: () {
                      homebloc.add(OnSubEvent());
                    },
                    child: Icon(Icons.remove_circle)),
              ],
            ),
          );
        },
      ),
    );
  }
}
