import 'package:flutter/material.dart';
import 'package:museum_skills_w28/utils/json.dart';

class ExhibitPage extends StatelessWidget {
  const ExhibitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            child: FutureBuilder(
              future: JsonReader.readJson(),
              builder: (context, snapshot)
              {
              if ( snapshot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
              if (snapshot.data == null) return Center(child: Text("erros"),);
              final data = snapshot.data;
              
              return CarouselView(
                itemSnapping: true,
                itemExtent: 400,
                children: [
                  ExhibitCard(
                    image: "media-files/images/leonardo_da_vinci/mona_lisa.jpg",
                    title: data!.first["title"].toString(),
                    year: data.first["years"].toString(),
                    description: data.first["comment"].toString(),
                    ),
                  ExhibitCard(
                    image: "media-files/images/leonardo_da_vinci/lady_ermine.jpg",
                    title: data[1]["title"].toString(),
                    year: data[1]["years"].toString(),
                    description: data[1]["comment"].toString(),
                    direction: VerticalDirection.up,
                    ),
                  ExhibitCard(
                    title: data.last["title"],
                    year: data.last["years"].toString(),
                    description: data.last["comment"].toString(),
                    image: "media-files/images/gustav_klimt/the_kiss.jpg",
                    
                    ),
                ],
                );
              }

            ),
          ),
        ),
      ),
    );
  }
}

class ExhibitCard extends StatelessWidget {
  const ExhibitCard({
    super.key, required this.image, this.direction = VerticalDirection.down, required this.title, required this.year, required this.description
  });
  final String image;
  final String title;
  final String year;
  final String description;

  final VerticalDirection direction;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.elliptical(100, 100),
          topRight: Radius.elliptical(100, 100),
          bottomRight: Radius.elliptical(0, 0),
          bottomLeft: Radius.elliptical(0, 0),
        ),
      ),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        child: Column(
          verticalDirection: direction,
          children: [
            Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius:  BorderRadius.only(
                  topLeft: direction== VerticalDirection.up ? Radius.zero : Radius.elliptical(100, 100),
                  topRight:  direction== VerticalDirection.up ? Radius.zero : Radius.elliptical(100, 100),
                  bottomRight:  direction== VerticalDirection.down ? Radius.zero : Radius.elliptical(100, 100),
                  bottomLeft:  direction== VerticalDirection.down ? Radius.zero : Radius.elliptical(100, 100),
                ),
              ),
            ),
            Container(
              color: Colors.amber,
              height: 100,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(title,
                        style: TextStyle(
                          fontFamily: "Optima",
                          color: Colors.grey.shade900,
                          fontSize: 26
                        ),
                        ),
                        Text("$year, Milan, Italy",
                        style: TextStyle(
                          fontFamily: "Optima",
                          color: Colors.grey,
                          fontSize: 14
                        ),
                        ),
                      ],
                    ),
                    IconButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        backgroundColor: WidgetStatePropertyAll(Colors.grey.shade900)
                      ),
                      onPressed: (){},
                      icon: Icon(Icons.arrow_outward)
                      )
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
               Image.asset("media-files/images/quote.png", height: 40, color: Colors.grey.shade700,),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Flexible(child: Text(description)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}