import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ui_demos/app/modules/home/views/custom_clip_path.dart';

import '../../../../styles/app_theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(

      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipPath(),
            child: Container(
              height: screenSize.height*0.40,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.3, 0.7],
                  colors: [AppColor.policeBlue, AppColor.policeBlueDeep],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
            child: Column(
              children: [
                SizedBox(height: screenSize.height*0.08,),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/igp.jpg"),
                      radius: screenSize.height*0.05,
                    ),

                    const SizedBox(width: 10,),

                    Expanded(
                        child: Container(

                          width: double.infinity,
                          height: screenSize.height*0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const  [
                              Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              // Text("Mr. Police", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                              Text("IGP", style: TextStyle(color: Colors.white, fontSize: 16, ),),
                            ],
                          ),
                        ),
                    ),
                  ],
                ),

                SizedBox(height: screenSize.height*0.08,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      // color: Colors.transparent,
                      child: Container(
                        height: screenSize.height*0.20,
                        width: screenSize.width*0.40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                                child: Icon(Icons.qr_code, size: screenSize.height*0.08, color: AppColor.policeBlue,),
                            ),
                            Expanded(
                              flex: 2,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Text("Qr\nScanner", textAlign: TextAlign.center, style: TextStyle(color: AppColor.policeBlue,),),
                                ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      child: Container(
                        height: screenSize.height*0.20,
                        width: screenSize.width*0.40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0)
                        ),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Icon(Icons.sticky_note_2_outlined, size: screenSize.height*0.08, color: AppColor.policeBlue,),
                            ),
                            Expanded(
                              flex: 2,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text("\nReports", textAlign: TextAlign.center, style: TextStyle(color: AppColor.policeBlue,),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: screenSize.height*0.02,),


                Expanded(
                    child: ListView(
                      children: [
                        Container(
                          height: screenSize.height*0.40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/chart1.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),

                        Container(
                          height: screenSize.height*0.40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/chart1.png")
                              )
                          ),
                        )
                      ],
                    )
                ),

              ],
            ),
          )

        ],
      )
    );
  }
}
