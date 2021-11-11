import 'package:election_exit_poll_07610567/helpers/platform_aware_asset_image.dart';
import 'package:election_exit_poll_07610567/models/food_item.dart';
import 'package:election_exit_poll_07610567/models/new_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_details_page.dart';

class NewsPageSocialPage extends StatefulWidget {
  static const routeName = '/food_list_page';

  const NewsPageSocialPage ({Key? key}) : super(key: key);

  @override
  _NewsPageSocialPage  createState() => _NewsPageSocialPage ();
}

class _NewsPageSocialPage  extends State<NewsPageSocialPage > {

  var newsitems = [
    NewsItem(
      id: 1,
      title: 'มดดำ ประกาศถึงคนใกล้ตัวจะตัดเพื่อน ถ้าเอาพญานาคที่เคยให้บูชาไปขาย',
      content: 'เป็นที่ทราบกันดีว่า มดดำ คชาภา พิธีกรชื่อดังนั้นเชื่อและศรัทธาในเรื่องพญานาคอย่างมาก เจ้าตัวมักจะเดินทางไปกราบไหว้ขอพรที่ ถ้ำนาคา อุทยานแห่งชาติภูลังกา จ.บึงกาฬ อยู่บ่อยๆ กระทั่งได้สร้างรูปปั้นพญานาคไว้ที่บึงกาฬ เพื่อให้คนรอบตัว และครอบครัวได้กราบไหว้ อีกทั้งยังทำองค์เล็กไว้แจกให้กับเพื่อนๆ อีกด้วย',
      date: 'วันที่ 11/11/2021',
      image: '1-sc.png',
    ),
    NewsItem(
      id: 2,
      title: 'หนุ่ม กรรชัย ย้อนเล่าวีรกรรมแสบแอบพาสาวเข้าบ้าน จนแม่ราดน้ำร้อนฆ่าเชื้อ',
      content: 'ล่าสุดในรายการ 3 แซ่บ ที่ หนุ่ม กรรชัย เป็นพิธีกร ก็ได้เล่าถึงวีรกรรมของตัวเองสมัยที่ยังเป็นเด็กวัยรุ่น โดย หนุ่ม เล่าว่า ตอนที่เป็นยังวัยรุ่น เคยแอบพาผู้หญิงเข้าบ้าน แล้วพาไปแอบในตู้เสื้อผ้า สุดท้ายแม่เข้ามาเจอ แม่เลยเอาเสื้อผ้าทั้งตู้ต้มน้ำร้อน เพื่อฆ่าเชื้อเลย เพราะแม่ไม่ชอบให้ไปมีผู้หญิง ไปคบกับผู้หญิง แต่ความเป็นผู้ชายก็อยากมีโลกส่วนตัวบ้าง ก็กลัวแม่จะรู้ แล้วแม่ไม่ชอบ ก็เลยเอาไปแอบในตู้เสื้อผ้า.',
      date: 'วันที่ 11/11/2021',
      image: '2-sc.png',
    ),
    NewsItem(
      id: 3,
      title: 'เพลง ชนม์ทิดา นุ่งวันพีซถ่ายรูป ภาพเซ็กซี่เป็นโมเมนต์หวานเพราะ เป๊ก เศรณี',
      content: 'ล่าสุด เพลง ชนม์ทิดา เผยโมเมนต์หวานๆ เมื่อเจ้าตัวควงหนุ่มเป๊กไปพักผ่อนชิลๆ ริมทะเล งานนี้เพลงหยิบชุดว่ายน้ำวันพีซเว้าหลังสวยๆ มาใส่ เผยให้เห็นผิวแผ่นหลังที่ขาวเนียนตา ใส่กางเกงขาสั้นทับอีกชั้น และตั้งใจจะถ่ายรูปเก็บไว้เป็นที่ระลึก โพสท่าสวยๆ ริมสระน้ำ แต่ดูเหมือนว่าภาพเซ็กซี่เบาๆ จะกลายเป็นภาพหวานน้ำตาลเชื่อมไปเลย เมื่อหนุ่มเป๊กแอบเข้ามากอดจากด้านหลัง ซึ่งเพลงก็ได้โพสต์ภาพดังกล่าวลงไอจี พร้อมทั้งเขียนข้อความว่า “ตัวจุ้น! (อยากมีส่วนร่วมแหละ ดูออก) #pescape” ท่ามกลางคอมเมนต์ที่ชื่นชมความหวานน่ารักของทั้งคู่ บ้างก็แซวว่าพบคนขี้หวง 1 อัตรา ฯลฯ',
      date: 'วันที่ 11/11/2021',
      image: '3-sc.png',
    ),
    NewsItem(
      id: 4,
      title: 'นักร้องสาว! “มัจฉา โมซิมันน์” สวย เก่ง มั่น',
      content: 'หวานซ่อนเปรี้ยวลุคอินเตอร์ มัจฉา โมซิมันน์ ศิลปินสาวลูกครึ่งสวิตเซอร์แลนด์ จากค่ายเพลง White Fox (ไวท์ ฟ็อกซ์) ในเครือ GMM Grammy เจ้าของเพลงฮิต “So What” ที่ปลุกกระแส T-PoP เมืองไทยให้คึกคัก ล่าสุดส่ง “Waste My Time” ด้วยเพลงที่มีบีตเท่ๆ บวกกลิ่นอายของฮิปฮอปแบบจัดๆ ส่งท้ายปิดอีพีอัลบั้ม “Dreaming” ที่บอกเล่าความรักที่ไม่ชัดเจน อย่ามัวแต่มานั่งเสียดายเวลา จากฝีมือการแต่งเนื้อร้องแบบฟาดเฟียร์ซของ เกต-จินภัค เปียกลิ่น น้องสาวคนเก่งของ แก้ม-วิชญาณี เพื่อส่งต่อพลังบวกให้ “ผู้หญิง” หันมารักตัวเอง ฮึบ! แล้ว มูฟออนแบบเริ่ดๆ เชิดๆ',
      date: 'วันที่ 7/11/2021',
      image: '4-sc.png',
    ),
    NewsItem(
      id: 5,
      title: 'ศรราม น้ำเพชร ปรับตัวเล่นลิเกออนไลน์-ขายขนม หลังโควิดทำสูญรายได้ 10 ล้าน',
      content: 'พร้อมกลับมารับงานลิเกอย่างเต็มที่ สำหรับลิเกเงินล้านขวัญใจพ่อยกแม่ยก แบงค์ ศรราม น้ำเพชร หลังสูญเสียเสาหลัก คุณพ่อมนต์รัก อดีตลิเกดังด้วยโรคมะเร็งตับ งานนี้ลิเกวัยทีน แบงค์ ศรราม พร้อมสานต่อคณะลิเกดังด้วยตัวเอง ด้วยกลยุทธ์รูปแบบใหม่ๆ ตามสถานการณ์ในปัจจุบัน อย่างลิเกออนไลน์ เพื่อสร้างรายได้ให้ชาวคณะกลับมามีงานทำอีกครั้ง ล่าสุดมาเปิดใจผ่านรายการ "Z story Z Holiday" ช่องอมรินทร์ทีวี กับพิธีกร ดีเจอ๋อง เขมรัชต์ และ ลิตา อินทร์ชลิตา',
      date: 'วันที่ 11/11/2021',
      image: '5-sc.png',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: newsitems.length,
        itemBuilder: (BuildContext context, int index) {
          var newsItem = newsitems[index];

          return Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: EdgeInsets.all(8.0),
            elevation: 5.0,
            shadowColor: Colors.black.withOpacity(0.2),
            child: InkWell(
              onTap: () => _handleClickFoodItem(newsItem),
              child: Row(
                children: <Widget>[
                  PlatformAwareAssetImage(
                    assetPath: 'assets/images/${newsItem.image}',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  /*Image.asset(
                    'assets/images/${foodItem.image}',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),*/
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${newsItem.title}',
                                style: GoogleFonts.prompt(fontSize: 10.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _handleClickFoodItem(NewsItem newsItem) {
    Navigator.pushNamed(
      context,
      NewsDetailsPage.routeName,
      arguments: newsItem,
    );
  }
}
