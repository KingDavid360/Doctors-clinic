import 'package:flutter/material.dart';
import 'package:health_care/Components/CustomWidgets.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:health_care/Screens/Screen3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<String> image = ['tooth (1) 1.png', 'heartbeat 1.png', 'bone (1) 1.png'];
  List<String> doctor = ['Dentist', 'Heart surgeon', 'Bone surgeon'];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -3),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/doc1.png'),
                      ),
                      title: Text(
                        'Welcome back',
                        style: TextStyle(color: Colors.grey),
                      ),
                      subtitle: Text(
                        'Nazmul 👋',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Color(0xFFE2EAF1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image(
                                      image: AssetImage('images/Vector1.png'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image(
                                      image: AssetImage('images/Vector2.png'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Image(
                                      image: AssetImage('images/Vector2.png'),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Text(
                        'UpComming Appoinements',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    height: 105,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        color: Color(0xFF363cc0),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF363cc0).withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 0,
                              offset: Offset(0.0, 25)),
                          BoxShadow(
                              color: Color(0xFF363cc0).withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 0,
                              offset: Offset(0.0, 19)),
                          BoxShadow(
                              color: Color(0xFF363cc0).withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 0,
                              offset: Offset(0.0, 14)),
                          BoxShadow(
                              color: Color(0xFF363cc0).withOpacity(0.9),
                              spreadRadius: 5,
                              blurRadius: 0,
                              offset: Offset(0.0, 6)),
                        ]),
                    child: Column(
                      children: [
                        ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -3),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/doc2.png'),
                          ),
                          title: Text(
                            'Dr. Rohul Alom',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Tooth,Specialist',
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(Icons.more_vert, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Container(
                                  height: 40,
                                  width: 135,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE2EAF1).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.calendar_month_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ' Sep 18,2022',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: SizedBox(
                                  width: 10,
                                ),
                              ),
                              Flexible(
                                flex: 5,
                                child: Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE2EAF1).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.schedule,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        ' (11 Am-03 Pm)',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 5, top: 5),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 10,
                          child: Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color(0xFFE2EAF1),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Search...",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            width: 20,
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF363cc0).withOpacity(0.5),
                                    Color(0xFF363cc0),
                                  ],
                                ),
                                color: Color(0xFF363cc0),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image(
                                        image: AssetImage('images/dot.png'),
                                      ),
                                      Image(
                                        image: AssetImage('images/dash.png'),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image(
                                        image: AssetImage('images/dash.png'),
                                      ),
                                      Image(
                                        image: AssetImage('images/dot.png'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Text(
                        'Category',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: doctor.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.only(
                                left: 30, top: 0, right: 1, bottom: 0),
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color(0xFFE2EAF1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                      image:
                                          AssetImage('images/${image[index]}')),
                                  Text(
                                    ' ${doctor[index]}',
                                    style: TextStyle(
                                        color: Color(0xFF263238),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Text(
                        'Top Rated Doctor',
                        style: TextStyle(
                            color: Color(0xFF263238),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'see all',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(),
                        ),
                      );
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(),
                          ),
                        );
                      },
                      child: DoctorsListTile(
                        image: 'images/doc3.png',
                        name: 'Dr. Ronald Richard',
                        specialization: 'Heart Surgeon',
                        rating: ' 4.3',
                        time: ' 11 Am-03 Pm',
                      ),
                    ),
                  ),
                  DoctorsListTile(
                    image: 'images/doc4.png',
                    name: 'Dr. Jenny wilson',
                    specialization: 'Dental specialist',
                    rating: ' 4.9',
                    time: ' 10 Am-12 Pm',
                    onPressed: (context) {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Detail()));
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('images/Home.png'),
                        Image.asset('images/Calendar.png'),
                        Image.asset('images/Chat.png'),
                        Image.asset('images/Profile.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
