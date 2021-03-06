import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todolist_app/UI/Sidebar/sidebar.dart';
import 'package:todolist_app/bloc.navigation_bloc/navigation_bloc.dart';



class SideBarLayoutAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<NavigationBloc, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
            SideBarAssets(),
          ],
        ),
      ),
    );
  }
}
