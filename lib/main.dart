import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String mainimg =
    "https://i.pinimg.com/736x/ac/95/7b/ac957bd5463b9464d059cfd8cc35ef18.jpg";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //logo
            const Image(
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/621668/screenshots/15550383/biryanilogo.png"),
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("A1 Briyani"),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("RR Briyani"),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Jaffna Briyani"),
                  const SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("The Briyani hub"),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

            Container(
                height: 504,
                width: double.infinity,
                //color: Colors.red,
                child: Row(
                  children: [
                    Container(
                      height: 504,
                      width: 160,
                      // color: Colors.black,
                      child: Column(
                        children: [
                          buildGestureDetector_left(
                              "https://www.indianhealthyrecipes.com/wp-content/uploads/2021/12/chicken-biryani-recipe-480x270.jpg"),
                          buildGestureDetector_left(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYufRsMMNbwDxgnSDEA5_PcoePR9Z6WLCxTA&s"),
                          buildGestureDetector_left(
                              "https://www.relishthebite.com/wp-content/uploads/2019/09/Mushroom_cauliflower_Biryani-2.jpg"),
                          buildGestureDetector_left(
                              "https://thegoldenrice.com/wp-content/uploads/2023/05/Biryani-Chicken-65-Solo-Meal.jpg"),
                        ],
                      ),
                    ),
                    //leftside
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(mainimg),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(4, 5),
                                  blurRadius: 6,
                                  color: Colors.black,
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //ingredients menu
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildCircleAvatar(
                                "https://assets.epicurious.com/photos/62f16ed5fe4be95d5a460eed/1:1/w_2560%2Cc_limit/RoastChicken_RECIPE_080420_37993.jpg"),
                            buildCircleAvatar(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY_38OB-O3ct4_WTA4CLOW7rpDmuU8RkDVsQ&s"),
                            buildCircleAvatar(
                                "https://www.jiomart.com/images/product/original/590003515/onion-1-kg-product-images-o590003515-p590003515-1-202408070949.jpg?im=Resize=(420,420)"),
                            buildCircleAvatar(
                                "https://www.awesomecuisine.com/wp-content/uploads/2019/03/Biryani-Masala-Powder.jpg"),
                          ],
                        ),
                        Text(
                          "RR Briyani",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "Rs.1590.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(ingreimage) {
    return CircleAvatar(
      radius: 31,
      backgroundColor: Colors.black,
      child: CircleAvatar(
          //backgroundColor: Colors.white,
          radius: 27,
          backgroundImage: NetworkImage(ingreimage)),
    );
  }

  GestureDetector buildGestureDetector_left(briyaniimage) {
    return GestureDetector(
      onTap: () {
        print("Type1");
        setState(() {
          mainimg = briyaniimage;
        });
      },
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(briyaniimage),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 5),
                    blurRadius: 6,
                    color: Colors.black,
                  ),
                ]),
          )
        ],
      ),
    );
  }

  Container buildContainer_menu(title) {
    return Container(
      height: 30,
      width: 150,
      color: Colors.black,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
