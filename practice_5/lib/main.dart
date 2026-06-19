import 'package:flutter/material.dart';
import 'package:practice_5/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SocialProfile(),
    );
  }
}

class SocialProfile extends StatefulWidget {
  const SocialProfile({super.key});

  @override
  State<SocialProfile> createState() => _SocialProfileState();
}

class _SocialProfileState extends State<SocialProfile> {
  List<Map<String, String>> images = [
    {
      "name": "Mountain Landscape",
      "url": "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
    },
    {
      "name": "Beach Sunset",
      "url": "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      "name": "City Night View",
      "url": "https://images.unsplash.com/photo-1477959858617-67f85cf4f1df",
    },
    {
      "name": "Forest Nature",
      "url": "https://images.unsplash.com/photo-1441974231531-c6227db76b6e",
    },
    {
      "name": "Cute Cat",
      "url": "https://images.unsplash.com/photo-1518791841217-8f162f1e1131",
    },
    {
      "name": "Mountain Landscape",
      "url": "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
    },
    {
      "name": "Beach Sunset",
      "url": "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    },
    {
      "name": "City Night View",
      "url": "https://images.unsplash.com/photo-1477959858617-67f85cf4f1df",
    },
    {
      "name": "Forest Nature",
      "url": "https://images.unsplash.com/photo-1441974231531-c6227db76b6e",
    },
    {
      "name": "Cute Cat",
      "url": "https://images.unsplash.com/photo-1518791841217-8f162f1e1131",
    },
    {
      "name": "Colorful Flowers",
      "url": "https://images.unsplash.com/photo-1490750967868-88aa4486c946",
    },
    {
      "name": "Galaxy Stars",
      "url": "https://images.unsplash.com/photo-1462331940025-496dfbfc7564",
    },
    {
      "name": "Coffee Time",
      "url": "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085",
    },
    {
      "name": "Snowy Mountains",
      "url": "https://images.unsplash.com/photo-1519681393784-d120267933ba",
    },
    {
      "name": "Desert Road",
      "url": "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
    },
    {
      "name": "Waterfall View",
      "url": "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
    },
    {
      "name": "Green Valley",
      "url": "https://images.unsplash.com/photo-1470770841072-f978cf4d019e",
    },
    {
      "name": "Modern Building",
      "url": "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab",
    },
    {
      "name": "Golden Bridge",
      "url": "https://images.unsplash.com/photo-1449824913935-59a10b8d2000",
    },
    {
      "name": "Ocean Waves",
      "url": "https://images.unsplash.com/photo-1439066615861-d1af74d74000",
    },
  ];

  int selectedItem = 4;

  Widget navBar(IconData icon, int index) {
    bool isSelected = selectedItem == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },

      child: AnimatedContainer(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withValues(alpha: 0.3)
              : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        duration: Duration(milliseconds: 250),
        child: Icon(icon),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Profile'),
        actions: [Icon(Icons.more_vert)],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: AppColors.tertiary.withValues(alpha: 0.1),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navBar(Icons.home_outlined, 0),
            navBar(Icons.search, 1),
            navBar(Icons.add_box_outlined, 2),
            navBar(Icons.favorite_outline, 3),
            navBar(Icons.person_2_outlined, 4),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  height: 180,
                  width: double.maxFinite,

                  child: Image.network(
                    'https://scontent.fcgp3-2.fna.fbcdn.net/v/t39.30808-6/698621849_1932672987387099_2776653476939361796_n.jpg?stp=cp6_dst-jpg_tt6&cstp=mx2048x1536&ctp=s960x960&_nc_cat=111&ccb=1-7&_nc_sid=cc71e4&_nc_eui2=AeFqP7SKJTTXyX9vyToJvpr3M8oWnpvl1gozyhaem-XWCtA-AcQE_F2l0dvWbO0-mLEQeeuSiiKqWHvpYScZMN4a&_nc_ohc=rPcZE0fAD94Q7kNvwGOPlq8&_nc_oc=AdobW2qazE9Qk4f2wxNOucpafU46_Z-EB-unT34CkjcgejmlKnOQ_vMX26ZO7CxyvJw&_nc_zt=23&_nc_ht=scontent.fcgp3-2.fna&_nc_gid=TBOEKMNbFlqdStaOwiTbmw&_nc_ss=7b2a8&oh=00_Af-y2AWW_XKACOgrkTm4_uogeQDc3s6RbMoBnGaq-ZhV-g&oe=6A398F42',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -60,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                        'https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/583703493_1798563064131426_8050730029920598196_n.jpg?stp=dst-jpg_tt6&cstp=mx1900x1900&ctp=s1900x1900&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHlwP4St4831UT7PmM9HLnEMF6pp7j1kS8wXqmnuPWRL8SGHhfkVs7gOTYL3sjTaeJsXziEJbKV7YXovSmyL3di&_nc_ohc=4DY10caD6XoQ7kNvwHL8C3w&_nc_oc=AdqDLScCtwCCyKcvTSh5xDKC0xDgnFHtILg7UO4lE45InH50mqXKUw_DfVgCmZSSIeM&_nc_zt=23&_nc_ht=scontent.fcgp3-1.fna&_nc_gid=bY3iKvDxQwoTijm-bUImCA&_nc_ss=7b2a8&oh=00_Af_0ApsVsKfDwoAB-5RKqwZpqyLMDRsm0l0k6vexI_1SnQ&oe=6A396521',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),

            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Md Mahamud Hasan',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('@mahamudh.official'),
                  Text('السلام عليكم ورحمة الله وبركاته\n\n\nمحمود حسن'),
                ],
              ),
            ),

            Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [Text('1.2K'), Text('POSTS')]),
                Column(children: [Text('205K'), Text('FOLLOWERS')]),
                Column(children: [Text('805'), Text('FOLLOWING')]),
              ],
            ),
            Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Follow',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Message',
                        style: TextStyle(
                          color: AppColors.tertiary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,

                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemCount: images.length,
                  itemBuilder: (context, index) => StoryCard(
                    image: images[index]['url'] as String,
                    name: images[index]['name'] as String,
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [Icon(Icons.grid_view), Text('POSTS')]),
                Row(children: [Icon(Icons.video_library), Text('Reels')]),
                Row(children: [Icon(Icons.location_on), Text('Tagged')]),
              ],
            ),
            Divider(thickness: 1),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: PostCard(imageUrl: images[index]['url'] as String),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.image, required this.name});

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 32,
          child: CircleAvatar(radius: 28, backgroundImage: NetworkImage(image)),
        ),
        Text(name.length > 7 ? '${name.substring(0, 7)}...' : name),
      ],
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SizedBox(child: Image.network(imageUrl, fit: BoxFit.cover)),
    );
  }
}
