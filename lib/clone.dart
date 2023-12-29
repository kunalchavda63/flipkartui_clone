import 'package:flutter/material.dart';

class clone extends StatelessWidget {
  const clone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.menu),
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(right: 25),
          child: Text(
            'Flipkart',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            size: 24,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.shopping_cart,
            size: 24,
          ),
          SizedBox(width: 10),
        ],
      ),
      bottomSheet: Bottomsheet(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SearchBar(),
            menustripe(),
            offerslider(),
            SizedBox(height: 0),
            Row(
              children: [
                itemcard(),
                itemcard(imageurl: 'tt-electro',txt: 'Min-60% Off',),
                itemcard(imageurl: 'tt-mobiles',txt: 'Min-30% Off'),
              ],
            ),
            SizedBox(height: 2),
            Padding(padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount for you',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Center(
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(top: 1),
                      alignment: Alignment.center,
                      child: Text(
                        'View all',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  )
                ],
              ),

            ),
            Container(
              color: Colors.white,
              height: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child:itemcard(imageurl: 'tt-mobiles',)),
                        Expanded(child:itemcard()),
                      ],
                    ),

               Row(
                children: [
                  Expanded(child:itemcard()),
                  Expanded(child:itemcard(imageurl: 'tt-electro',)),
                ],
              ),
                  ],
                ),


            ),
      ]
      ),
    ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search for Products,Brands and New Accesories",
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 28,
            ),
            suffixIcon: InkWell(
              onLongPress: () {},
              child: Container(
                height: 20,
                width: 25,
                child: Icon(Icons.mic, color: Colors.blue),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                ),
              ),
            )),
      ),
    );
  }
}

class menustripe extends StatelessWidget {
  const menustripe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.all(2)),
              Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              Text(
                'All Categroies',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w800),
              )
            ],
          ),
          menustripeitem(),
          menustripeitem(itemlabel: 'applience', imageurl: 'applience'),
          menustripeitem(itemlabel: 'mobiles', imageurl: 'mobiles'),
          menustripeitem(itemlabel: 'electronics', imageurl: 'electronics'),
          menustripeitem(
            itemlabel: 'fashion',
            imageurl: 'fashion',
          ),
          menustripeitem(
            itemlabel: 'grocery',
            imageurl: 'grocery',
          ),
        ],
      ),
    );
  }
}

class menustripeitem extends StatelessWidget {
  final String? imageurl;
  final String? itemlabel;

  const menustripeitem({Key? key, this.imageurl, this.itemlabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/${imageurl ?? 'offers'}.jpg'),
          )),
        ),
        Text(
          itemlabel ?? 'Special offres',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class offerslider extends StatelessWidget {
  const offerslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      alignment: Alignment.center,
      child: GridView.count(
        children: [
          offerslideritems(),
          offerslideritems(),
          offerslideritems(),
        ],
        crossAxisCount: 1,
        childAspectRatio: 0.5001,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class offerslideritems extends StatelessWidget {
  const offerslideritems({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        width: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1565995487495-e2a23f3af2ee?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 50, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Text(
                'Computer BestSellers\nLaptops,printers,Monitors',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              )),
              SizedBox(height: 10),
              Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Center(
                  child: Text(
                    '30-75% OFF',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 25,
                width: 210,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Center(
                  child: Text(
                    'No cost EMI Durability Certified',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class itemcard extends StatelessWidget {
  final String? imageurl;
  final String? txt;
  const itemcard({Key?key,this.imageurl,this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 160,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/${imageurl??'tt applience'}.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 20,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: Center(
                        child: Text(
                      txt??'Min-50% off',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 13.0),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home_filled,color: Colors.blueAccent,),
          Icon(Icons.polymer,color: Colors.blueAccent,),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,

              ),
            margin: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),

              child: Icon(Icons.grid_view,color: Colors.white,),
            )),
          Icon(Icons.video_call,color: Colors.blueAccent,),
          Icon(Icons.videogame_asset,color: Colors.blueAccent,),
        ],
      ),
    );
  }
}



