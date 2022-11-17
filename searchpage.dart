import 'package:flutter/material.dart';
import 'package:untitled3/pages/searchpage2.dart';
import 'package:untitled3/pages/searchscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../mediinfo.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

// class SearchPage extends StatelessWidget {
//   const SearchPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//
  /*
*/

class _SearchPageState extends State<SearchPage> {

  static List<String> mediPummok = [
    '타이레놀정500밀리그램',
    '타이레놀정160밀리그램',
    '어린이타이레놀현탁액',
    '우먼스타이레놀정',
    'a',
    'b',
    'c',
    'd',
  ];

  static List<String> mediUpche = [
    '주)한국얀센',
    '주)한국얀센',
    '주)한국얀센',
    '주)한국얀센',
    'a',
    'b',
    'c',
    'd',
  ];

  static List<String> mediSeongbun = [
    '아세트아미노펜',
    '아세트아미노펜',
    '아세트아미노펜',
    '아세트아미노펜',
    'a',
    'b',
    'c',
    'd',
  ];

  static List<String> mediHyoneung = [
    '감기로 인한 발열 및 통증, 두통, 신경통, 근육통, 월경통, 염좌통',
    '모름',
    '모름',
    '모름',
    'a',
    'b',
    'c',
    'd',
  ];

  static List<String> mediYongbup = [

    '만 12세 이상 소아 및 성인은 1회 1~2정씩 1일 3~4회',
    '모름',
    '모름',
    '모름',
    'a',
    'b',
    'c',
    'd',
  ];



  final List<MediInfo> mediData = List.generate(mediUpche.length, (index) =>
      MediInfo(mediPummok[index], mediUpche[index], mediSeongbun[index],mediHyoneung[index], mediYongbup[index] ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("search"),
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: BorderRadiusDirectional.only,
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
      scrollDirection:
      Axis.vertical, //vertical : 수직으로 나열 / horizontal : 수평으로 나열
      itemCount: mediData.length, //리스트의 개수
      itemBuilder: (BuildContext context, int index) {
        //리스트의 반목문 항목 형성
        return Card(
          child: ListTile(
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),

            title: SizedBox(
                child: Text(
               mediData[index].pummok,
              style: TextStyle(
                fontSize:25),
              )
            ),
            subtitle: SizedBox(
              child: Text(
                   mediData[index].upche,
              style: TextStyle(
                fontSize: 23,
              ),
              ),
            ),
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SearchedPage(mediinfo: mediData[index],)));
            }
        )
        );
      }),
    );
  }
}

// class SearchPage extends StatelessWidget {
//   const SearchPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//       return Scaffold(
//
        /* appBar: AppBar(
          title: const Text("search"),
          automaticallyImplyLeading: false,
          centerTitle: false,
          actions: [
            IconButton(
                color: Colors.white,
                onPressed: BorderRadiusDirectional.only,
                icon: Icon(Icons.search),
            )
          ],
          ),
*/
//       body: Column(
//           children: [
//             SizedBox(
//               height: 22,
//             ),
//             SearchScreen(),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height:33,
//                   ),
//                   Text(
//                     "  품목명: 타이레놀정500밀리그램",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height:5,
//                   ),
//                     Text(
//                     "  업체명: 주)한국얀센",
//                       style: TextStyle(
//                         fontSize: 23,
//                         color: Colors.black,
//                       ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//               ),
//               width: 392.7,
//               height: 133,
//             ),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height:33,
//                   ),
//                   Text(
//                     "  품목명: 타이레놀정160밀리그램",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height:5,
//                   ),
//                   Text(
//                     "  업체명: 주)한국얀센",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               width: 392.7,
//               height: 133,
//             ),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height:33,
//                   ),
//                   Text(
//                     "  품목명: 어린이타이레놀현탁액",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height:5,
//                   ),
//                   Text(
//                     "  업체명: 주)한국얀센",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//               ),
//               width: 392.7,
//               height: 133,
//             ),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height:33,
//                   ),
//                   Text(
//                     "  품목명: 타이레놀정500밀리그램",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height:5,
//                   ),
//                   Text(
//                     "  업체명: 주)한국얀센",
//                     style: TextStyle(
//                       fontSize: 23,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//               ),
//               width: 392.7,
//               height: 133,
//             ),
//           ],
//
//
//
//       )
//
//     );
//   }
// }

