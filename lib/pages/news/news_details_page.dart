import 'package:election_exit_poll_07610567/helpers/platform_aware_asset_image.dart';
import 'package:election_exit_poll_07610567/models/food_item.dart';
import 'package:election_exit_poll_07610567/models/new_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NewsDetailsPage extends StatelessWidget {
  static const routeName = '/news_details_page';

  const NewsDetailsPage();

  @override
  Widget build(BuildContext context) {
    final newsItem = ModalRoute.of(context)!.settings.arguments as NewsItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(newsItem.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3 / 2,
              child: PlatformAwareAssetImage(
                assetPath: 'assets/images/${newsItem.image}',
                fit: BoxFit.cover,
              ),
              /*child: Image.asset(
                'assets/images/${foodItem.image}',
                fit: BoxFit.cover,
              ),*/
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${newsItem.content}',
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                  Text(
                    '${newsItem.date}',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.prompt(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            if (false)
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'ชื่อเมนู: ${newsItem.title}',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Text(
                        'ราคา: ${newsItem.title} บาท',
                        style: GoogleFonts.prompt(fontSize: 20.0),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              /*ElevatedButton(
                              onPressed: () {},
                              child: const Text('-', style: TextStyle(fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '123',
                                style: GoogleFonts.prompt(fontSize: 20.0),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('+', style: TextStyle(fontSize: 20)),
                            ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
