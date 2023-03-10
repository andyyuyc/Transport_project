import 'package:flutter/material.dart';
import 'package:transport/DB_Sqlite/controller.dart';
import 'package:transport/DB_Sqlite/TodoDB.dart';
import 'package:transport/setting/soundpage.dart';
import 'package:transport/setting/Color.dart';

class setting_page extends StatelessWidget {
  //Controller controller = new Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        title: Text("Settings",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Change password"),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Option 1"),
                            Text("Option 2"),
                            Text("Option 3")
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close")),
                        ],
                      );
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("??????????????????",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      )),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Change password"),
                        content: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Option 1"),
                            Text("Option 2"),
                            Text("Option 3")
                          ],
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close")),
                        ],
                      );
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("????????????",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600],
                      )),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_down_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "app??????",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sound_page()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "????????????",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600]),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(title: Text("???????????????"), children: <
                          Widget>[
                        SimpleDialogOption(
                          onPressed: () {
                            // ??????1
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: const Text('100??????'),
                          ),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            // ??????2
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: const Text('200??????'),
                          ),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            // ??????3
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: const Text('300??????'),
                          ),
                        ),
                      ]);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "??????????????????",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.grey)
                ],
              ),
            ),



            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => color_page()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "???????????????",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600]),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                  ],
                )),
            SizedBox(
              height: 15,
            ),



          ],
        ),
      ),
    );
  }
}

