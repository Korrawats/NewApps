import 'package:election_exit_poll_07610567/helpers/platform_aware_asset_image.dart';
import 'package:election_exit_poll_07610567/models/food_item.dart';
import 'package:election_exit_poll_07610567/models/new_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_details_page.dart';

class NewsPageSportPage extends StatefulWidget {
  static const routeName = '/food_list_page';

  const NewsPageSportPage ({Key? key}) : super(key: key);

  @override
  _NewsPageSportPage  createState() => _NewsPageSportPage ();
}

class _NewsPageSportPage  extends State<NewsPageSportPage > {

  var newsitems = [
    NewsItem(
      id: 1,
      title: '“บางกอกกล๊าส” ต่อยอดธุรกิจกีฬา เดินหน้าสู่วงการฟุตบอลอังกฤษ เซ็นพันธมิตร อ็อกซ์ฟอร์ด ยูไนเต็ด',
      content: 'นายปวิณ ภิรมย์ภักดี ประธานเจ้าหน้าที่บริหาร กลุ่มบริษัทบางกอกกล๊าส เล่าถึงเป้าหมายในการจับมือครั้งนี้ว่าต้องการขยายคุณค่าและต่อยอดความสำเร็จจากธุรกิจในเครือร่วมกับธุรกิจกีฬา และหวังเป็นอย่างยิ่งที่จะมีส่วนร่วมในการช่วยพัฒนาสโมสรฟุตบอลอ็อกซ์ฟอร์ด ยูไนเต็ด เพื่อทุกๆ คนที่มีส่วนร่วมกับทั้งสโมสรและเมือง ซึ่งทางด้านของ ไนออลล์ แมควิลเลียมส์ ผู้อำนวยการฝ่ายบริหารของอ็อกซ์ฟอร์ด ยูไนเต็ด ก็กล่าวเพิ่มเติมว่า ตนรู้สึกยินดีและตื่นเต้นเป็นอย่างยิ่งที่ได้มีโอกาสร่วมงานกับธุรกิจระดับโลก ผู้ซึ่งมีความสัมพันธ์ที่ดีกับวงการกีฬาและธุรกิจมากมายทั้งในสหราชอาณาจักรและทั่วโลก',
      date: 'วันที่ 10/11/2021',
      image: '1-s.png',
    ),
    NewsItem(
      id: 2,
      title: '“โค้ชอู๊ด” เปิดใจนั่งแท่นกุนซือขัดตาทัพการท่าเรือ ก่อนพบราชบุรี',
      content: '“ความพร้อมโดยรวมของทีมตอนนี้ ถือว่ากำลังพร้อมอย่างเต็มที่ แต่ตอนนี้เราต้องพยายามดึงสภาพจิตใจของนักเตะให้กลับมามีความมุ่งมั่นอีกครั้ง ส่วนวันนี้ถือว่าโชคดีที่เราได้แข่งในบ้าน และมีแฟนบอลเข้ามาชมถึงขอบสนาม ตรงนี้น่าจะเป็นกำลังใจที่สำคัญของนักเตะทุกคน” “ส่วนเป้าหมายในเกมนี้ ผมก็อยากทำหน้าที่โค้ชให้ดีที่สุด จะพยายามกระตุ้นและแรงบันดาลใจให้กับนักเตะอย่างดีที่สุด เพื่อเก็บสามแต้มให้ได้ในเกมนี้” ',
      date: 'วันที่ 14/11/2021',
      image: '2-s.png',
    ),
    NewsItem(
      id: 3,
      title: 'ห้ามพลาด "บุรีรัมย์ มาราธอน 2022" ชิงชัย 22 ม.ค.ปีหน้า',
      content: 'วันที่ 11 พ.ย. 64 งานแถลงข่าวการจัดการแข่งขันอย่างยิ่งใหญ่ โดยมี นายพิพัฒน์ รัชกิจประการ รัฐมนตรีว่าการกระทรวงการท่องเที่ยวและกีฬา พร้อมด้วย นายธัชกร หัตถาธยากูล ผู้ว่าราชการจังหวัดบุรีรัมย์, นายแพทย์พิเชษฐ พืดขุนทด นายแพทย์สาธารณสุขจังหวัดบุรีรัมย์, นายเนวิน ชิดชอบ ประธานสนามช้าง อินเตอร์เนชั่นแนล เซอร์กิต และ พลตำรวจเอก สันต์ ศรุตานนท์ นายกสมาคมกีฬากรีฑาแห่งประเทศไทย ในพระบรมราชูปถัมภ์ พร้อมผู้สนับสนุนภาคเอกชน นายสุรพล อุทินทุ ผู้บริหารสำนักประสานงานภายนอก บริษัท ไทยเบฟเวอเรจ จำกัด (มหาชน) โดยเครื่องดื่มตราช้างและตัวแทนภาครัฐ เอกชน ชมรมวิ่ง นักวิ่งเข้าร่วมงานมากมาย',
      date: 'วันที่ 11/11/2021',
      image: '3-s.png',
    ),
    NewsItem(
      id: 4,
      title: '"รีเซ" ชี้จุดอ่อนสำคัญ อาจทำ "ลิเวอร์พูล" ชวดแชมป์พรีเมียร์ลีก',
      content: 'ลิเวอร์พูลภายใต้การนำของ เยอร์เกน คลอปป์ ยังคงโดนปัญหาอาการบาดเจ็บ เล่นงานนักเตะอยู่อย่างต่อเนื่อง นับตั้งแต่ออกสตาร์ตในฤดูกาล 2021-22 ไม่ว่าจะเป็น โรแบร์โต เฟอร์มิโน, นาบี เกอิตา, เจมส์ มิลเนอร์, เคอร์ติส โจนส์ และ โจ โกเมซ ซึ่งต่างโดนโรคเดี้ยงถามหา จนต้องพลาดโอกาสลงสนามไปหลายนัด นอกจากนี้ในช่วงหลังปีใหม่ พลพรรคหงส์แดงจะต้องเสียผู้เล่นกำลังหลักอย่าง นาบี เกอิตา, ซาดิโอ มาเน รวมถึง โมฮาเหม็ด ซาลาห์ ไปนานร่วมเดือน เนื่องจากต้องติดภารกิจรับใช้ชาติในศึกแอฟริกัน คัฟ ออฟ เนชันส์ ซึ่งจากปัญหาดังกล่าว ทำให้ รีเซ แสดงความหวั่นใจว่า การขาดผู้เล่นไปหลายราย อาจส่งผลโดยตรงกับฟอร์มของทีมในสนาม ซึ่งอาจส่งผลกระทบโดยตรงกับการลุ้นแชมป์พรีเมียร์ลีกในฤดูกาลนี้ด้วยเช่นกัน',
      date: 'วันที่ 11/11/2021',
      image: '4-s.png',
    ),
    NewsItem(
      id: 5,
      title: 'ชมไทยลีกสดที่นี่ เชียงใหม่ ยูไนเต็ด พบ ขอนแก่น ยูไนเต็ด พฤหัสบดีที่ 11 พ.ย. 64',
      content: 'การแข่งขันไฮลักซ์ รีโว่ ไทยลีก 2021-22 นัดที่ 12 ประจำวันพฤหัสบดีที่ 11 พ.ย. 64 คู่ที่น่าสนใจ “ช้างเผือก” เชียงใหม่ ยูไนเต็ด ทีมอันดับ 16 ของตาราง ที่เกมล่าสุดบุกแพ้ หนองบัวพิชญ เอฟซี 1-3 มี 6 แต้มจาก 11 นัด จะเปิดสนามสมโภชเชียงใหม่ 700 ปี รับการมาเยือนของ “จงอางผยอง” ขอนแก่น ยูไนเต็ด อันดับ 13 ของตาราง  ที่เกมล่าสุดเปิดบ้านเสมอ โปลิศ เทโร เอฟซี 1-1 มี 11 แต้มจาก 11 นัด เริ่มแข่งเวลา 18.00 น. แฟนบอลชาวไทยสามารถรับชมผ่านเว็บไซต์ไทยรัฐ',
      date: 'วันที่ 11/11/2021',
      image: '5-s.png',
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
