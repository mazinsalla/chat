import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../provider/control_provider.dart';
import '../screens/chat/chat_screen.dart';
import '../screens/auth/login_screen.dart';

class ControlView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ControlProvider provider, child) {
      return provider.uid == null ? LoginScreen() : ChatScreen();
    });
  }
}
