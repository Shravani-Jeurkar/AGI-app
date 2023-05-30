import 'package:agi_app/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'Pages/virtualClassrooms.dart';
import 'Pages/noticeBoard.dart';
import 'Pages/onlineAddmission.dart';
import 'Pages/atharvaPayment.dart';
import 'Pages/studentResult.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: black1,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
        children: [

          BuildMenuItem(
              title: "Virtual classroom",
              onClicked: () => selectedItem(context, 0),
              path:"assets/Icons/virtualClassrooms.png" ),
          BuildMenuItem(
              title: "Notice Board",
              onClicked: () => selectedItem(context, 1),
              path:"assets/Icons/noticeBoard.png" ),
          BuildMenuItem(
              title: "Online Admission",
              onClicked: () => selectedItem(context, 2),
              path:"assets/Icons/admission.png" ),
          BuildMenuItem(
              title: "Atharva Payment",
              onClicked: () => selectedItem(context, 3),
              path:"assets/Icons/payment.png" ),
          BuildMenuItem(
              title: "Student Result",
              onClicked: () => selectedItem(context, 4),
              path:"assets/Icons/result.png" ),
        ],
      ),
    );
  }

  Widget BuildMenuItem({
    required String title,
    required String path,
    VoidCallback? onClicked,
})
  {
    final bg = Color.fromRGBO(255, 230, 226, 1);
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Container(
          height: 58,
          width: 58,
          color: bg,
          child: Image.asset(scale: 3 ,path),
        ),
      ),
      contentPadding: const EdgeInsets.all(25),
      title: Text(title, style: const TextStyle(fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w500, color: whiteBg1),),
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const VirtualClassroom(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const NoticeBoard(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const OnlineAdmission(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AtharvaPayment(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const StudentResult(),
        ));
        break;
    }
  }

}
