import 'package:flutter/material.dart';

enum PopupMenuOption { time, overview, contact, register }

class MoreMenuButton extends StatelessWidget {
  const MoreMenuButton({
    super.key,
    required this.onTimePressed,
    required this.onOverviewPressed,
    required this.onContactPressed,
    required this.onRegisterPressed,
  });
  final VoidCallback onTimePressed;
  final VoidCallback onOverviewPressed;
  final VoidCallback onContactPressed;
  final VoidCallback onRegisterPressed;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      // three vertical dots icon (to reveal menu options)
      icon: const Icon(Icons.more_vert),
      itemBuilder: (_) {
        // show all the options based on conditional logic
        return const <PopupMenuEntry<PopupMenuOption>>[
          PopupMenuItem(
            value: PopupMenuOption.time,
            child: Text('Time'),
          ),
          PopupMenuItem(
            value: PopupMenuOption.overview,
            child: Text('Overview'),
          ),
          PopupMenuItem(
            value: PopupMenuOption.contact,
            child: Text('Contact'),
          ),
          PopupMenuItem(
            value: PopupMenuOption.register,
            child: Text('Register'),
          ),
        ];
      },
      onSelected: (option) {
        // push to different routes based on selected option
        switch (option) {
          case PopupMenuOption.time:
            onTimePressed;
            break;
          case PopupMenuOption.overview:
            onOverviewPressed;
            break;
          case PopupMenuOption.contact:
            onContactPressed;
            break;
          case PopupMenuOption.register:
            onRegisterPressed;
        }
      },
    );
  }
}
