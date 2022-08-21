import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';

import '../s13Pteamworpage/s13pteamworpage.dart';

class s12pageDialog extends StatefulWidget {
  const s12pageDialog({Key? key}) : super(key: key);

  @override
  State<s12pageDialog> createState() => _s12pageDialogState();
}

class _s12pageDialogState extends State<s12pageDialog> {

  @override
  void initState() {
   Future.delayed(Duration(seconds: 5),(){
     return alert(context,
         content:Container(
           height: 200,
           width: 400,
           color: Colors.yellow,
         ),
         title: Text('Alert'));

   });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink,
        alignment: Alignment.center,
        child: InkWell(
         child:ActionChip(label: Text("uzzal"), onPressed:(){
           Navigator.push(context, MaterialPageRoute(builder: (context) => s13Pteamworpage(),));
         })
        ),
      ),

    );
  }
}
