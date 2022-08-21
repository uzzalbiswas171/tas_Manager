import 'package:flutter/material.dart';

class PartoAppbar extends StatelessWidget {
   PartoAppbar({Key? key,this.ontap}) : super(key: key);
  GestureTapCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white38,
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: Text("Parto Teem",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,

                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: InkWell(
                  onTap: ontap,
                  child: Icon(Icons.keyboard_arrow_down_outlined,
                    color:Colors.white,
                    size:22,
                  ),
                ),
              )
            ],
          ),

          InkWell(
            onTap: (){},
            child: Icon(Icons.search,
              color: Colors.white,
              size: 27,),
          )
        ],
      ),
    );
  }
}
