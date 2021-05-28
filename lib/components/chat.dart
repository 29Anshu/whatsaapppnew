import 'package:flutter/material.dart';

Widget chatTile(
  String imgUrl,
  String username,
  String msg,
  String date,
  bool seen,
) {
  return  InkWell(
    onTap: (){

    },
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "sndhu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                  Text("date")
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text("n,dmsdn")),
                 if (seen)
                 Icon(
                   Icons.check_circle,
                   size:19,
                   color: Colors.green), 
                   
                if (! seen) 
                  
                
                 Icon(
                   Icons.check_circle_outline,
                   color:Colors.red),
                  
                 
                ],
              ),
            ],
          ))
        ],
      ),
    ),
  );
}
