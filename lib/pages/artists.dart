import 'package:flutter/material.dart';
import 'package:museum_skills_w28/pages/exhibit.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({super.key});

  @override
  State<ArtistsPage> createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {

  int tabState = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("media-files/images/background.jpg",
          repeat: ImageRepeat.repeat,
          width: double.maxFinite,
          height: double.maxFinite,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Explore the art of",
                      style: TextStyle(
                        fontFamily: "Optima",
                        fontSize: 30,
                      ),
                      ),
                      Text("Renaissance",
                      style: TextStyle(
                         fontFamily: "Optima",
                        fontSize: 46,
                        color: Colors.amber.shade600
                      ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 5,
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 280,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Type to seach...",
                              ),
                            ),
                          ),
                          Icon(Icons.fullscreen)
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("Artists",
                              style: TextStyle(
                                fontFamily: "Optima",
                                fontSize: 24,
                                color: tabState == 0 ? Colors.amber.shade600 : null
                              ),
                              ),
                              if (tabState == 0)
                              Container(
                                color: Colors.amber.shade600,
                                height: 4,
                                width: 100,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text("Artworks",
                              style: TextStyle(
                                fontFamily: "Optima",
                                fontSize: 24,
                                color: tabState == 1 ? Colors.amber.shade600 : null
                              ),
                              ),
                              if (tabState == 1)
                              Container(
                                color: Colors.amber.shade600,
                                height: 4,
                                width: 100,
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey.shade800,
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          spacing: 20,
                          children: [
                            PersonRow(
                              title: "Leonardo da Vinci",
                              description:  "1452 - 1519",
                              image: "media-files/images/leonardo_da_vinci/leonardo_da_vinci.jpeg",
                              isReversed: false,
                            ),
                            HorizontalArtistView(
                              images: [
                                "media-files/images/leonardo_da_vinci/mona_lisa.jpg",
                                "media-files/images/leonardo_da_vinci/lady_ermine.jpg",
                                "media-files/images/leonardo_da_vinci/litta_madonna.jpg",
                              ],
                            ),
                            PersonRow(
                              title: "Michelangelo",
                               description: "1475 - 1564",
                                image: "media-files/images/michelangelo/michelangelo.jpg",
                                isReversed: true,
                              ),
                              HorizontalArtistView(
                                firstItemBorderRadius: 
                                BorderRadius.only(
                                    topLeft: Radius.elliptical(0, 00),
                                    topRight: Radius.elliptical(0, 00),
                                    bottomRight: Radius.elliptical(50, 50),
                                    bottomLeft: Radius.elliptical(50, 50),
                                  ),
                                secondItemBorderRadius: BorderRadius.only(
                                    topLeft: Radius.elliptical(50, 50),
                                    topRight: Radius.elliptical(50, 50),
                                    bottomRight: Radius.elliptical(50, 50),
                                    bottomLeft: Radius.elliptical(50, 50),
                                  ),
                                  defaultBorderRadius: 
                                  BorderRadius.only(
                                    topLeft: Radius.elliptical(50, 50),
                                    topRight: Radius.elliptical(50, 50),
                                    bottomRight: Radius.elliptical(0, 0),
                                    bottomLeft: Radius.elliptical(0, 0),
                                  ),
                                images: [
                                  "media-files/images/michelangelo/david.jpg",
                                  "media-files/images/michelangelo/delphic_sibyl.jpg",
                                  "media-files/images/michelangelo/torment_of_saint_anthony.jpg",
                                ]
                              ),
                              PersonRow(
                                title: "Gustav Klimt",
                                description: "1862 - 1918",
                                image: "media-files/images/gustav_klimt/gustav_klimt.jpg",
                                isReversed: false),
                                 HorizontalArtistView(
                                  firstItemBorderRadius: BorderRadius.only(
                                    topLeft: Radius.elliptical(50, 50),
                                    topRight: Radius.elliptical(50, 50),
                                    bottomRight: Radius.elliptical(0, 0),
                                    bottomLeft: Radius.elliptical(0, 0),
                                  ),
                                  secondItemBorderRadius: BorderRadius.all(Radius.zero),
                                  defaultBorderRadius: BorderRadius.only(
                                    topLeft: Radius.elliptical(50, 50),
                                    topRight: Radius.elliptical(50, 50),
                                    bottomLeft: Radius.elliptical(50, 50),
                                    bottomRight: Radius.elliptical(50, 50)
                                  ),
                                images: [
                                  "media-files/images/gustav_klimt/the_kiss.jpg",
                                  "media-files/images/gustav_klimt/adele_bloch_bauer.jpg",
                                  "media-files/images/gustav_klimt/lady_with_fan.jpg",
                                ]
                              ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalArtistView extends StatelessWidget {
  const HorizontalArtistView({
    super.key, 
    required this.images,
    this.firstItemBorderRadius = const BorderRadius.only(
      topLeft: Radius.elliptical(100, 100),
      topRight: Radius.elliptical(100, 100),
      bottomRight: Radius.elliptical(100, 100),
      bottomLeft: Radius.elliptical(100, 100),
    ),
    this.secondItemBorderRadius = const BorderRadius.only(
      bottomRight: Radius.elliptical(100, 100),
      bottomLeft: Radius.elliptical(100, 100),
    ),
    this.defaultBorderRadius = BorderRadius.zero,
  });
  
  final List<String> images;
  final BorderRadius firstItemBorderRadius;
  final BorderRadius secondItemBorderRadius;
  final BorderRadius defaultBorderRadius;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < images.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: _buildImageContainer(context, images[i], i),
            ),
        ],
      ),
    );
  }
  
  Widget _buildImageContainer(BuildContext context, String imagePath, int index) {
    BorderRadius borderRadius;
    
    if (index == 0) {
      borderRadius = firstItemBorderRadius;
    } else if (index == 1) {
      borderRadius = secondItemBorderRadius;
    } else {
      borderRadius = defaultBorderRadius;
    }
    
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) =>ExhibitPage()));
      },
      child: Container(
        clipBehavior: borderRadius != BorderRadius.zero ? Clip.hardEdge : Clip.none,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
        ),
        width: 130,
        height: 200,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PersonRow extends StatelessWidget {
  const PersonRow({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.isReversed
  });
  final String title;
  final String description;
  final String image;
  final bool isReversed;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: isReversed ? TextDirection.rtl : null,
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 20,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
            style: TextStyle(
              fontFamily: "Optima",
              fontSize: 20
            ),
            ),
            Text(
             description,
                style: TextStyle(
                fontFamily: "Optima",
                fontSize: 14,
                color: Colors.grey
              ),
            ),
          ],
        )
      ],
    );
  }
}