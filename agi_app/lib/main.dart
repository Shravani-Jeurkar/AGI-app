import 'package:agi_app/Pages/virtualClassrooms.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:agi_app/Constants/colors.dart';
import 'package:agi_app/drawer.dart';

import 'Pages/atharvaPayment.dart';
import 'Pages/noticeBoard.dart';
import 'Pages/onlineAddmission.dart';
import 'Pages/studentResult.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
selectedItem(BuildContext context, int index){
  // Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const VirtualClassroom(),
      ));
      break;
    case 1:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const NoticeBoard(),
      ));
      break;
    case 2:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const OnlineAdmission(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AtharvaPayment(),
      ));
      break;
    case 4:
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const StudentResult(),
      ));
      break;
  }
}
class Clg{
  final String path;
  final int id;

  const Clg({required this.path, required this.id});
}

class Highlight{
  final String imgUrl, title, desc;
  final int id;

  const Highlight({required this.id, required this.imgUrl, required this.title, required this.desc});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}
const bg = whiteBg2;
class _HomePageState extends State<HomePage> {

  List <Clg> clgList = [
    const Clg(
        path: "assets/Clg/Engg.png",
        id: 0
    ),
    const Clg(
        path: "assets/Clg/Hm.png",
        id: 1
    ),
    const Clg(
        path: "assets/Clg/Engg.png",
        id: 2
    ),
    const Clg(
        path: "assets/Clg/Hm.png",
        id: 3
    ),

  ];

  List<Highlight> highlights = [
    const Highlight(
        imgUrl: "assets/Highlights/img1.jfif",
        id: 0,
        title: "i-mac lab",
        desc: "Dorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
    ),
    const Highlight(
        imgUrl: "assets/Highlights/img2.jfif",
        id: 1,
        title: "Kuka Robotics Lab",
        desc: "Dorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
    ),
    const Highlight(
        imgUrl: "assets/Highlights/img3.jfif",
        id: 2,
        title: "Innovation Lab",
        desc: "Dorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
    ),
    const Highlight(
        imgUrl: "assets/Highlights/img4.jfif",
        id: 3,
        title: "Innovation Lab",
        desc: "Dorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBg1,
      endDrawer: Navbar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Builder(builder: (context) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {Scaffold.of(context).openEndDrawer();},
                  child: Image.asset("assets/Icons/menus.png", width: 30,),),
              )
          ),
        ],
        // toolbarHeight: 60,
        iconTheme: IconThemeData(color: black1),
        elevation: 0,
        title: Text("Atharva group of Institutes", style: TextStyle(color: black1, letterSpacing: 0.5, fontWeight: FontWeight.w500, fontFamily: 'Poppins',fontSize: 18, ),),
        centerTitle: true,
        backgroundColor: whiteBg1,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(top: 10, bottom: 20),
              //   child: Center(
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(20),
              //       child: Image.asset("assets/Images/img1.jfif", width: 350, height: 145, fit: BoxFit.cover,),
              //     ),
              //   ),
              // ),
              SliderImg(),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: 350,
                  height: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      color: whiteBg2,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8, left: 12,),
                            child: const Text(
                              "Important Notice",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: 'Poppins',),
                          )),
                          Container(
                              margin: const EdgeInsets.only(left: 12, top: 8, right: 5, bottom: 5),
                              child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, fontFamily: 'Poppins', height: 1.025),
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5, right: 265),
                child: Text("Colleges", style: TextStyle(color: black1, fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w600,),),
              ),
              // const ClgSlider(),
              Container(
                margin: EdgeInsets.only(top: 5, left: 30, bottom: 10),
                height: 130,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: clgList.length,
                    shrinkWrap: true,
                    // physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Colleges(
                        path: clgList[index].path,
                        id: clgList[index].id,
                        onClicked: () => selectedItem(context, clgList[index].id),
                      );
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                width: 350, height: 180,
                  child: Center(
                    child: Image.asset("assets/Images/banner.png",),
                    ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5, right: 192),
                child: Text("Atharva Highlights", style: TextStyle(color: black1, fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w600,),),
              ),
              Container(
                child: ListView.builder(
                    itemCount: highlights.length,
                    shrinkWrap: true,
                    clipBehavior: Clip.hardEdge,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index){
                      return HighlightsTile(
                        imgUrl: highlights[index].imgUrl,
                        id: highlights[index].id,
                        title: highlights[index].title,
                        desc: highlights[index].desc,
                        // onClicked: () => selectedItem(context, clgList[index].id),
                      );
                    }
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class SliderImg extends StatefulWidget {
  const SliderImg({Key? key}) : super(key: key);

  @override
  State<SliderImg> createState() => _SliderImgState();
}

class _SliderImgState extends State<SliderImg> {
  List imgList = [
    {"id" : 1, "path" : "assets/Images/img1.jfif"},
    {"id" : 2, "path" : "assets/Images/img2.jfif"},
    {"id" : 3, "path" : "assets/Images/img3.jfif"},
    {"id" : 4, "path" : "assets/Images/img4.jfif"},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: Center(
        child: Container(
          height: 140,
          width: 350,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CarouselSlider(
                items: imgList.map((item) => Image.asset(item['path'], fit: BoxFit.cover,width: 350,height: 145, )).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason){
                    setState(() {
                      currentIndex = index;
                    });
                  }
                ),
              )
            // Image.asset("assets/Images/img1.jfif", width: 350, height: 145, fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}


class ClgSlider extends StatefulWidget {
  const ClgSlider({Key? key}) : super(key: key);

  @override
  State<ClgSlider> createState() => _ClgSliderState();
}

class _ClgSliderState extends State<ClgSlider> {
  List clgList = [
    {"id" : 1, "path" : "assets/Clg/Engg.png"},
    {"id" : 2, "path" : "assets/Clg/Hm.png"},
    {"id" : 3, "path" : "assets/Images/img3.jfif"},
    {"id" : 4, "path" : "assets/Images/img4.jfif"},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const bg = whiteBg2;
    return Container(
          height: 140,
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: CarouselSlider(
            items: clgList.map((item) => ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 120,
                width: 120,
                color: bg,
                child: Image.asset( item['path'], fit: BoxFit.scaleDown, scale: 1.5,)),
            )).toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(),
              autoPlay: false,
              onPageChanged: (index, reason){
              setState(() {
              currentIndex = index;
              });}
          )
        ),
      );
  }
}


class Colleges extends StatelessWidget {

  final path, id;
  void Function()? onClicked;
  Colleges({required this.path, required this.id, required this.onClicked});
    @override
    Widget build(BuildContext context) {
      const bg = whiteBg2;
      return Container(
        margin: const EdgeInsets.only(right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: bg,
            // height: 140,
            width: 130,
            child: GestureDetector(
              onTap: onClicked,
              child: Image.asset(path, fit: BoxFit.scaleDown, scale: 1.5,)
            )
          ),
        ),
      );
  }


}

class HighlightsTile extends StatelessWidget {

  final imgUrl, id, title, desc;
  const HighlightsTile({required this.imgUrl, required this.id, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: bg,
          child: ListTile(
            horizontalTitleGap: 10,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imgUrl, width: 100, height: 100,fit: BoxFit.cover, scale: 0.5, ),
            ),
            contentPadding: const EdgeInsets.all(4),
            isThreeLine: true,
            title: Text(title, style: const TextStyle(fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: black1),),
            subtitle: Text(desc, style: const TextStyle(fontSize: 10, fontFamily: "Poppins", fontWeight: FontWeight.w400, color: black1),
            // onTap: onClicked,
          )),
        ),
      ),
    );
  }
}
