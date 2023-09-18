import 'package:flutter/material.dart';
import 'package:getlinked_landing_page/core/constants/breakpoints.dart';
import 'package:getlinked_landing_page/presentation/widgets/more_menu_button.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // * This widget is responsive.
    // * On large screen sizes, it shows all the actions in the app bar.
    // * On small screen sizes, it shows only the shopping cart icon and a
    // * [MoreMenuButton].
    // ! MediaQuery is used on the assumption that the widget takes up the full
    // ! width of the screen. If that's not the case, LayoutBuilder should be
    // ! used instead.
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < Breakpoint.tablet) {
      return AppBar(
        title: const Text(
          'getLinked',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          MoreMenuButton(
            onContactPressed: () {},
            onOverviewPressed: () {},
            onRegisterPressed: () {},
            onTimePressed: () {},
          ),
        ],
      );
    } else {
      return AppBar(
        title: const Text('getLinked'),
        actions: [
          TextButton(child: const Text('Time'), onPressed: () {}),
          TextButton(child: const Text('Overview'), onPressed: () {}),
          TextButton(child: const Text('Contact'), onPressed: () {}),
          TextButton(child: const Text('Register'), onPressed: () {})
        ],
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
