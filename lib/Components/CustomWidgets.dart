import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DoctorsListTile extends StatelessWidget {
  final String image;
  final String name;
  final String specialization;
  final String time;
  final String rating;
  final Function(BuildContext context)? onPressed;
  const DoctorsListTile(
      {required this.image,
      required this.name,
      required this.specialization,
      required this.time,
      required this.rating,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 20,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color(0xFF363cc0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Slidable(
          endActionPane: ActionPane(
            extentRatio: 1 / 5,
            motion: ScrollMotion(),
            children: [
              CustomSlidableAction(
                flex: 1,
                onPressed: (_) {},
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                backgroundColor: Color(0xFF363cc0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF363cc0),
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage('images/message.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
          child: Container(
            height: 89,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                color: Color(0xFFE2EAF1),
                borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: double.infinity,
                    width: 64,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),
                        ),
                        borderRadius: BorderRadius.circular(9)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Text(
                          specialization,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff999AA4)),
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  rating,
                                  style: TextStyle(color: Color(0xff999AA4)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(image: AssetImage("images/clock.png")),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  time,
                                  style: TextStyle(color: Color(0xff999AA4)),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
