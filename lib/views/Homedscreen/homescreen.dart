import 'package:ecom/Controller/home_controller.dart';
import 'package:ecom/consts/consts.dart';
import 'package:ecom/views/Account/account.dart';
import 'package:ecom/views/Categories/categories.dart';
import 'package:ecom/views/Homedscreen/home.dart';
import 'package:ecom/views/cart/cart.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var contrller = Get.put(Homecontroller());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];
    var Navbody = [
      const Home(),
      const Categories(),
      const Cart(),
      const Profile()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: Navbody.elementAt(contrller.currentvarindex.value)))
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: contrller.currentvarindex.value,
          selectedItemColor: redColor,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          items: navbarItem,
          onTap: (value) {
            contrller.currentvarindex.value = value;
          },
        ),
      ),
    );
  }
}
