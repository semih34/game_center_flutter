import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:game_center/core/constants/assets/asset_constant.dart';
import 'package:game_center/core/constants/sample_data/app_data.dart';
import 'package:game_center/core/constants/thema/app_thema_colors.dart';
import 'package:game_center/product/widgets/lottie_asset.dart';
import 'package:game_center/product/widgets/store_card.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 140,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: AppThemaColors.purple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "You have",
                        style: TextStyle(
                          color: AppThemaColors.white,
                        ),
                      ),
                      Text(
                        "350 pt",
                        style: TextStyle(
                          color: AppThemaColors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Choose what to spend",
                        style: TextStyle(
                          color: AppThemaColors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppThemaColors.purple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.heart,
                              color: Colors.red,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Favorites",
                              style: TextStyle(
                                color: AppThemaColors.white,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppThemaColors.purple,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.document_text_sharp,
                              color: AppThemaColors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Purchase \n history",
                              style: TextStyle(
                                color: AppThemaColors.white,
                                fontSize: 16,
                              ),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 55,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildTitleButton(LottieConstant.tent, "Adventures"),
              buildTitleButton(LottieConstant.lightning, "Action"),
              buildTitleButton(LottieConstant.joystick, "RPG"),
              buildTitleButton(LottieConstant.racing, "Racing"),
              buildTitleButton(LottieConstant.ball, "Sport"),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        buildNewList("New", SampleAppData.points),
        buildNewList("Bestsellers", SampleAppData.bestsellers),
      ],
    );
  }

  Widget buildNewList(String title, List<Point> list) {
    return Container(
      height: 220,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppThemaColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                Point point = list[index];
                return StoreCard(
                  url: point.url,
                  title: point.title,
                  subtitle: point.subtitle,
                  pt: point.pt,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitleButton(String lottie, String text) {
    //Racing
    return Container(
      decoration: BoxDecoration(
        color: AppThemaColors.lightWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 15, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          LottieAsset(
            path: lottie,
          ),
          Text(
            text,
            style: const TextStyle(
              color: AppThemaColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
