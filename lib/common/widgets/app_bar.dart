import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppbar{
  static AppBar appBarStyle(BuildContext context, String appbar){
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Theme.of(context).colorScheme.primary,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
     
      title: Text(
        appbar,
        style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}