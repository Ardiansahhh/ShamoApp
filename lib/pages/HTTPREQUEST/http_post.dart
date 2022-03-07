import 'package:flutter/material.dart';
import 'package:shamo/pages/HTTPREQUEST/Model/get_result_model.dart';
import 'package:shamo/pages/HTTPREQUEST/Model/post_result_model.dart';
import 'package:shamo/theme.dart';

class Http_request extends StatefulWidget {
  const Http_request({Key? key}) : super(key: key);

  @override
  State<Http_request> createState() => _Http_requestState();
}

class _Http_requestState extends State<Http_request> {
  dynamic postresult = null;
  dynamic userresult = null;
  String output = 'no data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('API DEMO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text((postresult != null)
            //     ? postresult.id +
            //         " | " +
            //         postresult.name +
            //         " | " +
            //         postresult.job +
            //         " | " +
            //         postresult.created
            //     : "Tidak  ada data"),
            // Text((userresult != null)
            //     ? userresult.id +
            //         " | " +
            //         userresult.name
            //     : "Tidak  ada data"),
            Text(output),
            Container(
              height: 50,
              width: 160,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {
                  // PostResult.connectToAPI("Ardiansah", "UX Designer").then((value) {
                  //   postresult = value;
                  //   setState(() {});
                  // });
                  // User.connectToAPI("2").then((value) {
                  //   userresult = value;
                  //   setState(() {});
                  // });
                  User.getUsers("2").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++) 
                    output = output + " [ " + users[i].name + " ] ";
                    setState(() {});
                  });
                },
                child: Text(
                  "POST",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
