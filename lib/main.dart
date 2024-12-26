import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF1C0F0D),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi! Dianne",
              style: TextStyle(
                color: Color(0xFFFD5D69),
                fontSize: 25,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              "What are you cooking today",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: const Color(0xFFFFC6C9),
              width: 28,
              height: 28,
              child: SvgPicture.asset(
                "assets/svg/notification.svg",
                width: 12,
                height: 17,
                fit: BoxFit.none,
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: const Color(0xFFFFC6C9),
              width: 28,
              height: 28,
              child: SvgPicture.asset(
                "assets/svg/search.svg",
                width: 12,
                height: 18,
                fit: BoxFit.none,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Trending Recipe",
                style: TextStyle(
                  color: Color(0xFFFD5D69),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: const Image(
                      image: AssetImage("assets/salami_pizza.png"),
                      width: 358,
                      height: 143,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      clipBehavior: Clip.none,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFC6C9),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      width: 28,
                      height: 28,
                      child: SvgPicture.asset(
                        "assets/heart.svg",
                        color: const Color(0xFFEC888D),
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Color(0xFFEC888D))),
                width: 348,
                height: 49,
                child: const TrendingRecipe(
                  title: "Salami and cheese pizza",
                  duration: "30min",
                  desc: "This is a quick overview of the ingredients...",
                  rating: "5",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 255,
                width: 430,
                decoration: BoxDecoration(
                  color: Color(0xFFFD5D69),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Recipe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          YourRecipe(
                              title: "Chicken Burger",
                              image: "assets/burger.png",
                              rating: "5",
                              duration: "15min"),
                          SizedBox(
                            width: 10,
                          ),
                          YourRecipe(
                              title: "Tiramisu",
                              image: "assets/cake.png",
                              rating: "5",
                              duration: "15min"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Chef",
                      style: TextStyle(
                        color: Color(0xFFFD5D69),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TopChef(
                            image: "assets/chef1.png", title: "Joseph"),
                        TopChef(
                            image: "assets/chef2.png", title: "Andrew"),
                        TopChef(image: "assets/chef3.png", title: "Emily"),
                        TopChef(
                            image: "assets/chef4.png", title: "Jessica"),
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recently Added",
                      style: TextStyle(
                        color: Color(0xFFFD5D69),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Row(
                      children: [
                        RecentlyAdded(
                          title: "Lemonade",
                          image: "assets/tacos.png",
                          rating: "4",
                          duration: "30min",
                          desc: "Acidic and Refreshing",
                        ),
                        RecentlyAdded(
                          title: "Lemonade",
                          image: "assets/mojito.png",
                          rating: "4",
                          duration: "30min",
                          desc: "Acidic and Refreshing",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 251,
        height: 56,
        decoration: BoxDecoration(
            color: Color(0xFFFD5D69), borderRadius: BorderRadius.circular(33)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/svg/home.svg"),
            SvgPicture.asset("assets/svg/community.svg"),
            SvgPicture.asset("assets/svg/categories.svg"),
            SvgPicture.asset("assets/svg/profile.svg"),
          ],
        ),
      ),
    );
  }
}

class TrendingRecipe extends StatelessWidget {
  const TrendingRecipe({
    super.key,
    required this.title,
    required this.desc,
    required this.duration,
    required this.rating,
  });

  final String title, desc, duration, rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 130,
              ),
              SvgPicture.asset(
                "assets/clock.svg",
                width: 10,
                height: 10,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                duration,
                style: const TextStyle(
                  color: Color(0xFFEC888D),
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                desc,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                rating,
                style: const TextStyle(
                  color: Color(0xFFEC888D),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(
                "assets/star.svg",
                width: 10,
                height: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class YourRecipe extends StatelessWidget {
  const YourRecipe({
    super.key,
    required this.title,
    required this.image,
    required this.rating,
    required this.duration,
  });

  final String title, image, rating, duration;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage(image),
            width: 169,
            height: 162,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xFFFD5D69),
              borderRadius: BorderRadius.circular(14),
            ),
            child: SvgPicture.asset(
              "assets/heart.svg",
              fit: BoxFit.none,
            ),
          ),
        ),
        Positioned(
          bottom: -30,
          right: -6,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 169,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF1C0F0D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          rating,
                          style: TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/star.svg"),
                        SizedBox(width: 20),
                        SvgPicture.asset("assets/clock.svg"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          duration,
                          style: TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TopChef extends StatelessWidget {
  const TopChef({
    super.key,
    required this.image,
    required this.title,
  });

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image(
            image: AssetImage(image),
            width: 83,
            height: 74,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none),
        ),
      ],
    );
  }
}

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({
    super.key,
    required this.title,
    required this.image,
    required this.rating,
    required this.duration,
    required this.desc,
  });

  final String title, image, rating, duration, desc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Image(
            image: AssetImage(image),
            width: 169,
            height: 162,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Color(0xFFFD5D69),
              borderRadius: BorderRadius.circular(14),
            ),
            child: SvgPicture.asset(
              "assets/heart.svg",
              fit: BoxFit.none,
            ),
          ),
        ),
        Positioned(
          bottom: -30,
          right: -6,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: 169,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF1C0F0D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text(
                      desc,
                      style: const TextStyle(
                        color: Color(0xFF3E2823),
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          rating,
                          style: const TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/star.svg"),
                        SizedBox(width: 20),
                        SvgPicture.asset("assets/clock.svg"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          duration,
                          style: const TextStyle(
                              color: Color(0xFFEC888D),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}