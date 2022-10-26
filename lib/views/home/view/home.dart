import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:game_center/core/constants/sample_data/app_data.dart';
import 'package:game_center/core/constants/thema/app_thema_colors.dart';
import 'package:game_center/core/init/global_providers/navigation_provider.dart';
import 'package:game_center/product/widgets/activity_card.dart';
import 'package:game_center/product/widgets/credit_card.dart';
import 'package:game_center/product/widgets/custom_appbar.dart';
import 'package:game_center/product/widgets/custom_avatar.dart';
import 'package:game_center/product/widgets/custom_bottom_bar.dart';
import 'package:game_center/product/widgets/point_card.dart';
import 'package:game_center/views/store/view/store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemaColors.black,
      appBar: const CustomAppBar(),
      body: context.watch<NavigationProvider>().currentPosition == 2
          ? const Store()
          : buildBody(),
      bottomNavigationBar: CustomBottomBar(
        onClick: (int i) {
          //print(i);
        },
      ),
      extendBody: true,
    );
  }

  Widget buildBody() {
    const double height = 10;
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        buildCardList(),
        const SizedBox(
          height: height,
        ),
        Row(
          children: const [
            Text(
              "Transfer",
              style: TextStyle(
                color: AppThemaColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: height,
        ),
        buildTransferList(),
        const SizedBox(
          height: height,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent activity",
              style: TextStyle(
                color: AppThemaColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "All",
                style: TextStyle(
                  color: AppThemaColors.lightWhite,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: height,
        ),
        buildRecentActivity(),
        const SizedBox(
          height: height,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "New for points",
              style: TextStyle(
                color: AppThemaColors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "All",
                style: TextStyle(
                  color: AppThemaColors.lightWhite,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: height,
        ),
        buildNewForPoints(),
      ],
    );
  }

  Widget buildCardList() {
    return Row(
      children: [
        const Expanded(
          flex: 9,
          child: CreaditCard(
              name: "Bandy", cardNo: "**** **** **** 5846", exprise: "04/28"),
        ),
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              color: AppThemaColors.lightWhite,
              child: Container(
                height: 170,
                decoration: const BoxDecoration(),
                child: const Center(
                  child: Icon(
                    Entypo.plus,
                    color: AppThemaColors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTransferList() {
    const double width = 20;
    return Container(
      height: 120,
      decoration: const BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAvatar(
            url:
                "https://freepikpsd.com/file/2019/10/white-search-icon-background-Free-PNG-Images-Transparent.png",
            name: "Search",
            event: () {},
          ),
          const SizedBox(
            width: width,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: SampleAppData.transfers.length,
              itemBuilder: (BuildContext context, int index) {
                Transfer transfer = SampleAppData.transfers[index];
                return Row(
                  children: [
                    CustomAvatar(
                      url: transfer.url,
                      name: transfer.name,
                      event: () {},
                    ),
                    const SizedBox(
                      width: width,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecentActivity() {
    return Container(
      height: 180,
      decoration: const BoxDecoration(),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ActivityCard(
            icon: FontAwesome.shopping_cart,
            iconColor: Colors.orange,
            title: "Minimarket",
            subtitle: "Supermarkets",
            price: 58,
            pt: 2,
            event: () {},
          ),
          ActivityCard(
            icon: Ionicons.game_controller,
            iconColor: Colors.green,
            title: "Steam",
            subtitle: "Supermarkets",
            price: 12,
            pt: 1,
            event: () {},
          ),
          ActivityCard(
            icon: MaterialCommunityIcons.arrow_right_top_bold,
            iconColor: Colors.purple,
            title: "Steam",
            subtitle: "Supermarkets",
            price: 12,
            pt: 1,
            event: () {},
          ),
        ],
      ),
    );
  }

  Widget buildNewForPoints() {
    return Container(
      height: 110,
      decoration: const BoxDecoration(),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: SampleAppData.points.length,
        itemBuilder: (BuildContext context, int index) {
          Point point = SampleAppData.points[index];
          return PointCard(
            imageUrl: point.url,
            title: point.title,
            subtitle: point.subtitle,
            pt: point.pt,
          );
        },
      ),
    );
  }
}
