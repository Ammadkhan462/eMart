import 'package:ecom/consts/consts.dart';
import 'package:ecom/consts/listicon.dart';
import 'package:ecom/views/Account/components/details_cart.dart';
import '../../widget_common/bg_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            //        title: title!.text.fontFamily(bold).white.make(),
          ),
          extendBodyBehindAppBar: true,
          body: bgwidget(
              child: Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      10.heightBox,
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.edit,
                          color: whiteColor,
                        ),
                      ),
                      20.heightBox,
                      Row(
                        children: [
                          Image.asset(
                            imgProfile2,
                            width: 80,
                            fit: BoxFit.cover,
                          ).box.roundedFull.clip(Clip.antiAlias).make(),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Dummy user".text.fontFamily(bold).white.make(),
                              "Customer@example.com".text.white.make(),
                            ],
                          )),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                              color: whiteColor,
                            )),
                            onPressed: () {},
                            child:
                                "logout".text.fontFamily(semibold).white.make(),
                          )
                        ],
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          detailsCard(
                              width: context.screenWidth / 3.3,
                              title: "in your cart",
                              count: "00"),
                          detailsCard(
                              width: context.screenWidth / 3.3,
                              title: "in your wishlist",
                              count: "32"),
                          detailsCard(
                              width: context.screenWidth / 3.3,
                              title: "in your orders",
                              count: "67"),
                        ],
                      ),
                      20.heightBox,
                      ListView.separated(
                        shrinkWrap: true,
                        itemCount: profilebuttonlist.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: lightGrey,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: profilebuttonlist[index].text.make(),
                          );
                          ;
                        },
                      )
                          .box
                          .white
                          .rounded
                          .padding(EdgeInsets.symmetric(horizontal: 17))
                          .margin(EdgeInsets.all(2))
                          .shadowSm
                          .make()
                          .box
                          .padding(EdgeInsets.all(8))
                          .color(redColor)
                          .make(),
                    ],
                  ))))
    ]);
  }
}
