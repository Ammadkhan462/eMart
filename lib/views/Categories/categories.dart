import 'package:ecom/consts/consts.dart';
import 'package:ecom/consts/listicon.dart';
import 'package:ecom/views/Categories/categories_details.dart';
import 'package:ecom/widget_common/bg_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          body: bgwidget(
              child: Container(
            padding: EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 200),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      CategoriesImag[index],
                      height: 130,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    categoriesList[index]
                        .text
                        .align(TextAlign.center)
                        .color(darkFontGrey)
                        .make()
                  ],
                )
                    .box
                    .white
                    .outerShadow
                    .clip(Clip.antiAlias)
                    .roundedSM
                    .make()
                    .onTap(() {
                  Get.to(
                      () => CategoriesDetailed(title: categoriesList[index]));
                });
              },
            ),
          )),
          appBar: AppBar(
            elevation: 0.0,
            title: categories.text.make(),
          ),
        )
      ],
    );
  }
}
