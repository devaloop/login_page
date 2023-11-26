library login_page;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.appIcon,
    required this.appName,
    this.appTagline,
    required this.loginForm,
  });

  final Widget appIcon;
  final String appName;
  final String? appTagline;
  final Widget loginForm;

  @override
  Widget build(BuildContext context) {
    var widgets = [
      Expanded(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              appIcon,
              const SizedBox(
                height: 15,
              ),
              Text(
                appName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
              if (appTagline != null)
                Text(
                  appTagline!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
            ],
          ),
        ),
      ),
      Expanded(
        child: Center(
          child: loginForm,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Column(
                  children: widgets,
                );
              } else {
                return Row(
                  children: widgets,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
