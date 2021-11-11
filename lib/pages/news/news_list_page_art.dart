import 'package:election_exit_poll_07610567/helpers/platform_aware_asset_image.dart';
import 'package:election_exit_poll_07610567/models/food_item.dart';
import 'package:election_exit_poll_07610567/models/new_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_details_page.dart';

class NewsPageArtPage extends StatefulWidget {
  static const routeName = '/food_list_page';

  const NewsPageArtPage ({Key? key}) : super(key: key);

  @override
  _NewsPageArtPage  createState() => _NewsPageArtPage ();
}

class _NewsPageArtPage  extends State<NewsPageArtPage > {

  var newsitems = [
    NewsItem(
      id: 1,
      title: 'ม.ธุรกิจบัณฑิตย์ คว้า 5 รางวัลบุคลากรและนักศึกษาดีเด่น จาก สสอท.',
      content: 'อาจารย์และนักศึกษา มหาวิทยาลัยธุรกิจบัณฑิตย์ ได้รับรางวัลจากสมาคมอุดมศึกษาเอกชนแห่งประเทศไทยในพระราชูปถัมภ์ สมเด็จพระเทพรัตนราชสุดาฯ สยามบรมราชกุมารี (สสอท.) ประจำปี 2564 ตอกย้ำมาตรฐานคุณภาพการศึกษาด้านวิชาการ โดยในปีนี้มีอาจารย์และนักศึกษาเข้ารับรางวัล รวมทั้งสิ้น 5 รางวัล',
      date: 'วันที่ 11/11/2021',
      image: '1-a.png',
    ),
    NewsItem(
      id: 2,
      title: 'คณะกรรมการปฏิรูปฯ การศึกษา แนะอุดมศึกษาเร่งปรับ 4 บทบาท รับแนวโน้มตัวเลขนักศึกษา-วัยแรงงานมีอัตราส่วนลดลง พร้อมชี้กลไกจัดสรรงบฯ ต้องยึดหลักดีมานด์ตลาด',
      content: 'รศ. ดร.ศักรินทร์ ภูมิรัตน กรรมการปฏิรูปประเทศด้านการศึกษา แนะอุดมศึกษาเร่งปฏิรูปด้านการพัฒนาคนใน 4 บทบาทสำคัญ หนุนความต้องการตลาดแรงงานและสภาวการณ์ที่เปลี่ยนแปลงของโลก ได้แก่ 1. พัฒนากำลังคน 2. สนับสนุนงานวิจัย 3. บริการวิชาการแก่สังคม และ 4. พัฒนาศิลปวัฒนธรรมของสังคม พร้อมชูหลักคิด พัฒนาคนวัยทำงาน ทั้งในภาคการผลิตและการบริการสำคัญเทียบเท่าการผลิตบัณฑิตใหม่ โดยเฉพาะทักษะสำคัญต่อการทำงาน อาทิ การสื่อสารระหว่างบุคคล การทำงานร่วมกับผู้อื่น การจัดสรรเวลาให้เหมาะสมกับงานที่ได้รับมอบหมาย ฯลฯ และยกระดับการพัฒนาทักษะเพื่อการเรียนรู้ตลอดชีวิต (Life-long Learning) เพื่อให้สามารถปรับตัวได้เท่าทันในยุคดิสรัปชัน นอกจากนี้ การจัดสรรงบฯ แก่สถาบันอุดมศึกษา มีส่วนสำคัญยิ่งในการกระตุ้นให้สถาบันเร่งปรับตัวหรือปฏิรูปอุดมศึกษาได้อย่างมีประสิทธิภาพ อันนำไปสู่เป้าหมายในการสนับสนุนการพัฒนาเศรษฐกิจและสังคมของประเทศยั่งยืน',
      date: 'วันที่ 4/11/2021',
      image: '2-a.png',
    ),
    NewsItem(
      id: 3,
      title: 'วธ.ปลุกกระแสโขน-โขนร่วมสมัยสำหรับคนรุ่นใหม่ เชิญชวนนักเรียน นักศึกษา ประชาชนชมการแสดงโขนรูปแบบร่วมสมัย 14-15 พ.ย. นี้ ณ ลิโด้คอนเน็คท์ กรุงเทพฯ',
      content: 'นายอิทธิพล คุณปลื้ม รัฐมนตรีว่าการกระทรวงวัฒนธรรม เปิดเผยว่า กระทรวงวัฒนธรรม (วธ.) มีนโยบายสืบสาน รักษา ต่อยอดงานศิลปวัฒนธรรมของชาติอย่างยั่งยืนและส่งเสริมและพัฒนาความสัมพันธ์ทางวัฒนธรรมกับต่างประเทศเพื่อนำความเป็นไทยสู่สากล ดังนั้น วธ.ร่วมกับสถานเอกอัครราชทูตสาธารณรัฐฝรั่งเศสประจำประเทศไทยและหน่วยงานต่างๆ เช่น สมาคมฝรั่งเศสแห่งประเทศไทย สมาคมสยาม จัดโครงการพัฒนาองค์ความรู้โขนและเผยแพร่ในระดับสากลแบบร่วมสมัย โดยมีท่านผู้หญิงสิริกิติยา เจนเซน เป็นประธานที่ปรึกษาโครงการฯ ซึ่งโครงการฯมีกิจกรรมประกอบด้วยการจัดฉายสารคดีโขน วันที่ 3 พฤศจิกายน 2564 ณ สมาคมฝรั่งเศสแห่งประเทศไทย การแสดงร่วมสมัย School of Ganesh โดยศิลปินจากสำนักการสังคีต กรมศิลปากร นักแสดงจากคณะ 18monkeysdancetheatre สถาบันบัณฑิตพัฒนศิลป์ และนักเต้นจาก Conservatoire National Superieur Musique et Danse de Lyon สาธารณรัฐฝรั่งเศส แบ่งเป็น 3 รอบ ได้แก่ รอบแขกรับเชิญ วันที่ 12 - 13 พฤศจิกายน 2564 รอบนักเรียน นักศึกษา วันที่ 14 พฤศจิกายน 2564 และรอบบุคคลทั่วไป วันที่ 15 พฤศจิกายน 2564 ณ ลิโด้คอนเน็คท์ กรุงเทพฯ',
      date: 'วันที่ 2/11/2021',
      image: '3-a.png',
    ),
    NewsItem(
      id: 4,
      title: 'ประกวด VLOG Walking Tour : เที่ยวแบบเจ้าบ้าน',
      content: 'บริษัท ไทยเบฟเวอเรจ จำกัด (มหาชน) เชิญชวนนักเรียนระดับมัธยมศึกษาและระดับอุดมศึกษาที่มีความรู้ความสามารถและอยากสร้างสรรค์ผลงาน VLOG ท่องเที่ยว โชว์ไอเดีย เผยแพร่ศิลปวัฒนธรรมกับ "โครงการประกวด Bangkok River Festival 2021 VLOG Walking Tour:เที่ยวแบบเจ้าบ้าน" พาเที่ยวผ่านสื่อ VDO พาชมวิถีชีวิตผู้คน ศิลปวัฒนธรรมและอัตลักษณ์ชุมชน เพื่อสะท้อนวิถีชีวิตของแต่ละพื้นที่ 5 ชุมชนริมแม่น้ำเจ้าพระยา ได้แก่ วัดพระเชตุพนวิมลมังคลารามราชวรมหาวิหาร วัดอรุณราชวรารามราชวรมหาวิหาร วัดกัลยาณมิตรวรมหาวิหาร วัดประยุรวงศาวาสวรวิหาร และ วัดระฆังโฆสิตารามวรมหาวิหาร',
      date: 'วันที่ 26/10/2021',
      image: '4-a.png',
    ),
    NewsItem(
      id: 5,
      title: 'ขอเชิญร่วมส่งผลงานเข้าประกวดใน โครงการประกวดการแสดงศิลปวัฒนธรรมท้องถิ่นไทย เพื่อชาติ ศาสน์ กษัตริย์ "สืบสานวัฒนศิลป์ แผ่นดินสยาม"',
      content: 'ขอเชิญคนไทย ผู้มีจิตใจรักในการแสดง ศิลปวัฒนธรรมไทยร่วมส่งผลงานเข้าประกวดในโครงการประกวดการแสดงศิลปวัฒนธรรมท้องถิ่นไทย เพื่อชาติ ศาสน์ กษัตริย์เฉลิมพระเกียรติพระบาทสมเด็จพระเจ้าอยู่หัว เนื่องในโอกาสวันเฉลิมพระชนมพรรษา๖๙ พรรษา ๒๘ กรกฎาคม ๒๕๖๔ "สืบสานวัฒนศิลป์ แผ่นดินสยาม" ชิงถ้วยพระราชทานจากพระบาทสมเด็จพระเจ้าอยู่หัวพร้อมเงินรางวัล รวม 1,000,000 บาท',
      date: 'วันที่ 30/06/2021',
      image: '5-a.png',
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
