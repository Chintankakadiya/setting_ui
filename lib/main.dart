import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Setting());
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  TextStyle androidHeading = const TextStyle(
    color: Colors.red,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );
  TextStyle iosHeading = const TextStyle(
    color: CupertinoColors.systemGrey2,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );
  TextStyle iosTitle = const TextStyle(
    color: CupertinoColors.black,
    fontSize: 14,
  );
  TextStyle iosSubTitle = const TextStyle(
    color: CupertinoColors.systemGrey2,
    fontSize: 13,
  );
  Divider mydivider = const Divider(
    color: Colors.grey,
    thickness: 0.3,
  );
  bool lockAppSwitchVal = true;
  bool fingerprintSwitchVal = false;
  bool passwordSwitchVal = true;
  @override
  Widget build(BuildContext context) {
    return (Platform.isAndroid)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSwatch().copyWith(primary: Colors.red),
            ),
            home: Scaffold(
              appBar: AppBar(
                title: Text("Setting UI"),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Common",
                        style: androidHeading,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Language"),
                      subtitle: Text("English"),
                    ),
                    mydivider,
                    ListTile(
                      leading: Icon(Icons.cloud_outlined),
                      title: Text("Environment"),
                      subtitle: Text("Production"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text(
                        "Account",
                        style: androidHeading,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("Phone number"),
                    ),
                    mydivider,
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Sign Out"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text(
                        "Security",
                        style: androidHeading,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.phonelink_lock),
                      title: Text("Lock app in background"),
                      trailing: Switch(
                        value: lockAppSwitchVal,
                        onChanged: (val) {
                          setState(() {
                            lockAppSwitchVal = val;
                          });
                        },
                      ),
                    ),
                    mydivider,
                    ListTile(
                      leading: const Icon(Icons.lock),
                      title: const Text("Change password"),
                      trailing: Switch(
                          value: passwordSwitchVal,
                          onChanged: (val) {
                            setState(() {
                              passwordSwitchVal = val;
                            });
                          }),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Text(
                        "Misc",
                        style: androidHeading,
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.file_present_rounded),
                      title: Text("Terms of Service"),
                    ),
                    mydivider,
                    const ListTile(
                      leading: Icon(Icons.book_rounded),
                      title: Text("Open source licenses"),
                    ),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: const CupertinoNavigationBar(
                backgroundColor: CupertinoColors.destructiveRed,
                middle: Text(
                  "Settings UI",
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 5),
                      child: Text(
                        "Common",
                        style: iosHeading,
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.language,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Language",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          Text(
                            "English",
                            style: iosSubTitle,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.cloud,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Environment",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          Text(
                            "Production",
                            style: iosSubTitle,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                      child: Text(
                        "Account",
                        style: iosHeading,
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.phone_fill,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Phone number",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.mail,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Email",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      margin: const EdgeInsets.only(top: 1),
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Sign out",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                      child: Text(
                        "Security",
                        style: iosHeading,
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      margin: const EdgeInsets.only(top: 1),
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.phonelink_lock_outlined,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Lock app in background",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                              value: lockAppSwitchVal,
                              onChanged: (val) {
                                setState(() {
                                  lockAppSwitchVal = val;
                                });
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      margin: const EdgeInsets.only(top: 1),
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.fingerprint,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Use fingerprint",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                              value: fingerprintSwitchVal,
                              onChanged: (val) {
                                setState(() {
                                  fingerprintSwitchVal = val;
                                });
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      margin: const EdgeInsets.only(top: 1),
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Change password",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                              value: passwordSwitchVal,
                              onChanged: (val) {
                                setState(() {
                                  passwordSwitchVal = val;
                                });
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 5),
                      child: Text(
                        "Misc",
                        style: iosHeading,
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.doc_text,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Terms of Service",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: CupertinoColors.extraLightBackgroundGray,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: [
                          const Icon(
                            CupertinoIcons.book,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Open source licenses",
                            style: iosTitle,
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.forward,
                            color: CupertinoColors.systemGrey2,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
