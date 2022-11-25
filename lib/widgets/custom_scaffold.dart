import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/src/webview.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  const CustomScaffold({Key? key, required this.body, required AppBar appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [body, _buildShortAppBar(context)],
        ),
      ),
    );
  }

  Card _buildShortAppBar(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                'N',
                style: Theme.of(context).textTheme.headline6,
              ))
        ],
      ),
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(16.0),
      )),
    );
  }
}
