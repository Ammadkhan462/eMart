import 'package:ecom/consts/consts.dart';
import 'package:ecom/consts/listicon.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VxSwiper.builder(
                            itemCount: 3,
                            autoPlay: true,
                            height: 350,
                            aspectRatio: 16 / 9,
                            itemBuilder: (context, index) {
                              return Image.asset(
                                imgFc1,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              );
                            }),
                        10.heightBox,
                        title!.text
                            .size(16)
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .make(),
                        10.heightBox,
                        VxRating(
                          onRatingUpdate: (value) {},
                          normalColor: textfieldGrey,
                          selectionColor: golden,
                          maxRating: 5,
                          count: 5,
                          size: 25,
                          stepInt: true,
                        ),
                        10.heightBox,
                        "\$30,000"
                            .text
                            .color(redColor)
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Seller".text.white.fontFamily(semibold).make(),
                                "In House Brands"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                              ],
                            )),
                            const CircleAvatar(
                              backgroundColor: whiteColor,
                              child: Icon(
                                Icons.message_rounded,
                                color: darkFontGrey,
                              ),
                            ),
                            20.heightBox,
                          ],
                        )
                            .box
                            .outerShadowSm
                            .padding(EdgeInsets.all(5))
                            .margin(EdgeInsets.all(5))
                            .make(),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Color: "
                                      .text
                                      .color(textfieldGrey)
                                      .make(),
                                ),
                                Row(
                                  children: List.generate(
                                      3,
                                      (index) => VxBox()
                                          .size(40, 40)
                                          .roundedFull
                                          .margin(EdgeInsets.symmetric(
                                              horizontal: 6))
                                          .color(Vx.randomPrimaryColor)
                                          .make()),
                                ),
                              ],
                            ).box.padding(EdgeInsets.all(8)).make(),
                            Row(
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: "Color: "
                                      .text
                                      .color(textfieldGrey)
                                      .make(),
                                ),
                                Row(children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove)),
                                  "0"
                                      .text
                                      .size(22)
                                      .color(darkFontGrey)
                                      .fontFamily(bold)
                                      .make(),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                  10.widthBox,
                                  "0 available "
                                      .text
                                      .color(textfieldGrey)
                                      .make(),
                                ]),
                              ],
                            ).box.padding(EdgeInsets.all(8)).make(),
                            "Description"
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make(),
                            10.heightBox,
                            "This is a dummy item and dummy description here .................................................. "
                                .text
                                .color(textfieldGrey)
                                .make(),
                          ],
                        )
                        // Row(
                        //   children: [
                        //     "color"
                        //         .text
                        //         .size(8)
                        //         .make()
                        //         .box
                        //         .padding(EdgeInsets.all(15))
                        //         .make(),
                        //     30.widthBox,
                        //     Container(
                        //       padding: EdgeInsets.all(12),
                        //       decoration: BoxDecoration(
                        //         boxShadow: [
                        //           BoxShadow(
                        //               blurRadius: 20,
                        //               color: Colors.black12,
                        //               spreadRadius: 0.1)
                        //         ],
                        //       ),
                        //       child: CircleAvatar(
                        //         backgroundColor: whiteColor,
                        //       ).box.make(),
                        //     ),
                        //     Container(
                        //       padding: EdgeInsets.all(12),
                        //       decoration: BoxDecoration(
                        //         boxShadow: [
                        //           BoxShadow(
                        //               blurRadius: 20,
                        //               color: Colors.black12,
                        //               spreadRadius: 0.1)
                        //         ],
                        //       ),
                        //       child: CircleAvatar(
                        //         backgroundColor: Vx.yellow100,
                        //       ).box.size(30, 30).make(),
                        //     ),
                        //     Container(
                        //       padding: EdgeInsets.all(12),
                        //       decoration: BoxDecoration(
                        //         boxShadow: [
                        //           BoxShadow(
                        //               blurRadius: 20,
                        //               color: const Color.fromARGB(
                        //                   31, 255, 111, 111),
                        //               spreadRadius: 0.1)
                        //         ],
                        //       ),
                        //       child: CircleAvatar(

                        //         backgroundColor: redColor,
                        //       ).box.size(30, 30).make(),
                        //     ),
                        //   ],
                        // )
                        ,
                        ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(
                              itemDetailsList.length,
                              (index) => ListTile(
                                    title: itemDetailsList[index]
                                        .text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .make(),
                                    trailing: const Icon(Icons.arrow_forward),
                                  )),
                        ),
                        20.heightBox,
                        Productsynonymlike.text
                            .fontFamily(bold)
                            .size(16)
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
                                        .margin(
                                            EdgeInsets.symmetric(horizontal: 4))
                                        .padding(EdgeInsets.all(8))
                                        .make()),
                          ),
                        ),
                      ],
                    ),
                  ))),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Add to Cart'),
              style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20.0, color: whiteColor),
                  backgroundColor: redColor),
            ).box.height(50).make(),
          ),
        ],
      ),
    );
  }
}
