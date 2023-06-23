import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../constant.dart';
import '../../../../core/router/router.dart';
import 'action_dialog.dart';
import 'main_text.dart';

class CustomScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final Function()? onBackPressed;

  const CustomScaffold(
      {this.title, required this.body, this.onBackPressed, Key? key})
      : super(key: key);

  @override
  build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!MagicRouter.canPop) {
          showDialog(
              context: navigatorKey.currentContext!,
              builder: (c) => ActionDialog(
                    content: 'Do You Want Exit App ?',
                    approveAction: 'Yes',
                    cancelAction: 'No',
                    onApproveClick: () {
                      MagicRouter.pop();
                      SystemNavigator.pop();
                    },
                    onCancelClick: () {
                      MagicRouter.pop();
                    },
                  ));
        } else {
          onBackPressed != null ? onBackPressed!() : MagicRouter.pop();
        }
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kMainColor,
          leading: MagicRouter.canPop
              ? IconButton(
                  onPressed: () {
                    if (!MagicRouter.canPop) {
                      showDialog(
                          context: navigatorKey.currentContext!,
                          builder: (c) => ActionDialog(
                                content: 'Do You Want Exit App ?',
                                approveAction: 'Yes',
                                cancelAction: 'No',
                                onApproveClick: () {
                                  MagicRouter.pop();
                                  SystemNavigator.pop();
                                },
                                onCancelClick: () {
                                  MagicRouter.pop();
                                },
                              ));
                    } else {
                      onBackPressed != null
                          ? onBackPressed!()
                          : MagicRouter.pop();
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios_new))
              : Container(),
          title: MainText(
            text: title,
            color: kAccentColor,
          ),
        ),
        backgroundColor: kAccentColor,
        body: body,
      ),
    );
  }
}
