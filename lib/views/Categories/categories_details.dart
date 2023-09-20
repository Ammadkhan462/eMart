import 'package:ecom/consts/consts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget_common/bg_widget.dart';
import 'itemDetaile.dart';

class CategoriesDetailed extends StatelessWidget {
  final String? title;
  const CategoriesDetailed({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: title!.text.fontFamily(bold).white.make(),
        ),
        extendBodyBehindAppBar: true,
        body: bgwidget(
          child: Container(
            padding: EdgeInsets.all(19),
            child: Column(
              children: [
                25.heightBox,
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        6,
                        (index) => "Baby clothing"
                            .text
                            .size(12)
                            .makeCentered()
                            .box
                            .white
                            .size(100, 60)
                            .margin(EdgeInsets.symmetric(horizontal: 5))
                            .roundedSM
                            .make()),
                  ),
                ),
                20.heightBox,
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 250),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make()
                        ],
                      )
                          .box
                          .white
                          .rounded
                          .outerShadow
                          .margin(
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4))
                          .padding(EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(
                          () => ItemDetails(title: "Dummy"),
                        );
                      });
                      ;
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
