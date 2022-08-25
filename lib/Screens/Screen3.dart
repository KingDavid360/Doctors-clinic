import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff363CC0),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFE2EAF1).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(11)),
              child: Center(
                child: Icon(Icons.arrow_back_rounded),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Text(
            "Details",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 175,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xff363CC0),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(90)),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Jenny Wilson",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffEDF0FA).withOpacity(0.1),
                                borderRadius: BorderRadius.circular(11)),
                            child: Center(
                              child: SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: Image(
                                    image: AssetImage("images/tooth (1) 1.png"),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Dentist",
                            style: TextStyle(
                                color: Color(0xffCFD2FF), fontSize: 16),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 12),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                                color: Color(0xffCFD2FF), fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Visiting hour",
                        style: TextStyle(color: Color(0xffCFD2FF)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "11 Am-12 Pm",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Total Patient",
                        style: TextStyle(color: Color(0xffCFD2FF)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "1200+",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/circles.png")),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(100))),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.37,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/doctor2.png")),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(90))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3,
                ),
                RichText(
                  text: TextSpan(
                      text:
                          "A Dentist is a medical professional who specializes in dentistry, the diagnosis, and treatment of diseases and conditions of tooth, This helps to prevent conplications...",
                      style: TextStyle(color: Color(0xFF263238), height: 1.4),
                      children: [
                        TextSpan(
                            text: 'Read More',
                            style: TextStyle(
                                color: Color(0xff3B3FCB),
                                fontWeight: FontWeight.w500)),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Schedule",
                      style: TextStyle(
                          color: Color(0xFF263238),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "< June >",
                      style: TextStyle(
                          color: Color(0xff474CC5),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inactiveScheduleContainer("Sat", "12"),
                    inactiveScheduleContainer("Sun", "13"),
                    activeScheduleContainer("Mon", "14"),
                    inactiveScheduleContainer("Tue", "15"),
                    inactiveScheduleContainer("Wed", "16"),
                    inactiveScheduleContainer("Thu", "17"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Location",
                  style: TextStyle(
                      color: Color(0xFF263238),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                              child:
                                  Image(image: AssetImage('images/map.png')))),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 70,
                      child: Icon(
                        Icons.location_on_rounded,
                        color: Colors.blue[800],
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 180,
                      child: Text(
                        'Bandar,Sylhet',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Book an Appointment",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget inactiveScheduleContainer(String day, String date) {
  return Container(
    height: 44,
    width: 44,
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color(0xFFE2EAF1)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day,
          style: TextStyle(color: Colors.grey[700], fontSize: 12),
        ),
        Text(
          date,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ],
    ),
  );
}

Widget activeScheduleContainer(String day, String date) {
  return Container(
    height: 44,
    width: 44,
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF363cc0).withOpacity(0.5),
          Color(0xFF363cc0),
        ],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day,
          style: TextStyle(color: Colors.grey[200], fontSize: 12),
        ),
        Text(
          date,
          style: TextStyle(color: Colors.grey[200], fontSize: 16),
        ),
      ],
    ),
  );
}
