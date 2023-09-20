import 'package:ecom/consts/consts.dart';
import 'package:ecom/consts/listicon.dart';
import 'package:ecom/views/Categories/itemDetaile.dart';
import 'package:ecom/views/Homedscreen/components/featuredbutton.dart';
import 'package:ecom/widget_common/homebutton.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.screenWidth,
        height: context.screenHeight,
        padding: EdgeInsets.all(12),
        color: lightGrey,
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    suffixIcon: Icon(Icons.search),
                    fillColor: whiteColor,
                    hintText: searchansything),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SliderList.length,
                        itemBuilder: //item builder means what i'm passing)
                            (context, index) {
                          return Image.asset(SliderList[index],
                                  fit: BoxFit.fill)
                              .box
                              .rounded
                              .shadowSm
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homebutton(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todaydeal : flashsale)),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: SecondSlider.length,
                        itemBuilder: //item builder means what i'm passing)
                            (context, index) {
                          return Image.asset(SecondSlider[index],
                                  fit: BoxFit.fill)
                              .box
                              .rounded
                              .shadowSm
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5))
                              .make();
                        }),
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            3,
                            (index) => homebutton(
                                height: context.screenHeight * 0.15,
                                width: context.screenWidth / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topcategories
                                    : index == 1
                                        ? brand
                                        : topcategories))),
                    10.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: featuredcategories.text
                          .fontFamily(semibold)
                          .size(14)
                          .make(),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredbutton(
                                        title1: featuredlist1[index],
                                        Images1: featuredimg1[index]),
                                    10.heightBox,
                                    featuredbutton(
                                        title1: featuredlist2[index],
                                        Images1: featuredimg2[index]),
                                  ],
                                )),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredproduct.text.white
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
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
                                          .margin(EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .padding(EdgeInsets.all(8))
                                          .make()),
                            ),
                          ),

                          //third swiper
                          VxSwiper.builder(
                              aspectRatio: 16 / 9,
                              autoPlay: true,
                              height: 150,
                              enlargeCenterPage: true,
                              itemCount: SecondSlider.length,
                              itemBuilder: //item builder means what i'm passing)
                                  (context, index) {
                                return Image.asset(SecondSlider[index],
                                        fit: BoxFit.fill)
                                    .box
                                    .rounded
                                    .shadowSm
                                    .clip(Clip.antiAlias)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5))
                                    .make();
                              }),
                        ],
                      ),
                    ), //all products section
                    20.heightBox,
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap:
                            true, // why we use this because we use gridview in column
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 300),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
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
                              .margin(EdgeInsets.symmetric(horizontal: 4))
                              .padding(EdgeInsets.all(12))
                              .make();
                        })
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
