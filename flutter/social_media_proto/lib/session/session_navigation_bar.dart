import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_proto/session/feed/feed_view.dart';
import 'package:social_media_proto/session/profile/profile_view.dart';
import 'package:social_media_proto/session/session_navigation_bar_cubit.dart';

class SessionNavigationBar extends StatelessWidget {
  final List<Widget> _widgets = [
    FeedView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SessionNavigationBarCubit(),
      child: _tabBar(),
    );
  }

  Widget _tabBar() {
    return BlocBuilder<SessionNavigationBarCubit, int>(
        builder: (context, state) {
      return Scaffold(
        body: _widgets[state],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) => context
              .read<SessionNavigationBarCubit>()
              .updateSelectedIndex(index),
        ),
      );
    });
  }
}
