import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
          body: SingleChildScrollView(
            child: Column(

              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 230,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage("assets/images/ic_header.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.4),
                        ]
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Best Hotels Ever",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: Colors.grey,),
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                              hintText: "Search for hotels..."
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Business Hotels,",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem("assets/images/ic_hotel1.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel2.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel3.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel4.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel5.jpg", "Hotel1"),

                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Airport Hotels,",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem("assets/images/ic_hotel1.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel2.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel3.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel4.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel5.jpg", "Hotel1"),

                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Resort Hotels,",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem("assets/images/ic_hotel1.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel2.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel3.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel4.jpg", "Hotel1"),
                            makeItem("assets/images/ic_hotel5.jpg", "Hotel1"),

                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }


  Widget makeItem(image,txt){
    return AspectRatio(
        aspectRatio: 1.3,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
              SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.favorite,color: Colors.red,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
