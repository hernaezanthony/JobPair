import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class Jobs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    const mainColor = const Color(0xFF3CA019);

    List<String> jobsImages = [
      "images/image001.png",
      "images/image002.png",
      "images/image003.png",
      "images/image001.png",
      "images/image002.png",
      "images/image003.png"
    ];

    List<String> companyImages = [
      "images/company001.png",
      "images/company002.png",
      "images/company003.jpg",
      "images/company004.png",
      "images/company005.png",
      "images/company006.png",
    ];

    List<String> jobsTitles = [
      "Software Engineer",
      "Mobile Developer",
      "Network Engineer",
      "DevOps Engineer",
      "Test Engineer",
      "Sytems Engineer",
    ];

    List<String> jobsCompanies = [
      "Google, LLC",
      "Uber Technologies, Inc",
      "Slack Technologies",
      "Slack Technologies",
      "Google, LLC",
      "Uber Technologies, Inc"
    ];

    List<String> jobsSalaries = [
      "₱ 100,000 /mo",
      "₱ 85,000 /mo",
      "₱ 90,000 /mo",
      "₱ 150,000 /mo",
      "₱ 65,000 /mo",
      "₱ 70,000 /mo"
    ];

    CardController controller;

    return Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,0,0),
                  child: Text("Find a job that matches you",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
              ),
            ),
            Container(
              height: 50,
              width:  double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20,10,10,0),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.search_rounded),
                        Expanded(
                          child:Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,0,0),
                            child: Text(
                              "Search",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 60,
                    child: Card(
                      margin: EdgeInsets.fromLTRB(0, 10,20, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                          child:IconButton(
                            icon: Icon(
                              Icons.filter_list_rounded,
                              color: mainColor,
                            ),
                            onPressed: () {
                              // do something
                              createDialog(context);
                            },
                          ),
                      ),
                      elevation: 0.5,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,0,0),
                        child: Text("Browse by company",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,20,0),
                        child: Text("See all",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: mainColor))
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20,0),
              height: 70,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: [
                    Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[0]}')
                      ),
                      elevation: 0.5,
                    ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[1]}')
                      ),
                      elevation: 0.5,
                    ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[2]}')
                      ),
                      elevation: 0.5,
                    ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[3]}')
                      ),
                      elevation: 0.5,
                    ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[4]}')
                      ),
                      elevation: 0.5,
                    ),
                  Card(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(15),
                          child:Image.asset('${companyImages[5]}')
                      ),
                      elevation: 0.5,
                    ),
                ],
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: new TinderSwapCard(
                swipeUp: false,
                swipeDown: false,
                orientation: AmassOrientation.BOTTOM,
                totalNum: jobsImages.length,
                stackNum: 3,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child:Image.asset('${jobsImages[index]}',height: 150,)
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                            child:Text('${jobsTitles[index]}',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: mainColor)),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                            child:Text('${jobsCompanies[index]}',style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14)),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                            child:Text('${jobsSalaries[index]}',style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14))
                        )
                        ,Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child:Text("View Details",style: TextStyle(fontStyle: FontStyle.normal, fontSize: 12, decoration: TextDecoration.underline))
                        ),
                      ],
                    )
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                  
                },
              ),
            ),
          ]
      );
  }

  createDialog(BuildContext context){

    double _lowerValue = 20.0;
    double _upperValue = 80.0;
    double _lowerValueFormatter = 20.0;
    double _upperValueFormatter = 20.0;


    return showDialog(context: context, builder: (context){

        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Container(
              height: 400,
              child: Column(

                children: [
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child:Text("Filter Jobs",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,0,0),
                        child: Text("Field",style: TextStyle(fontSize: 14))
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20,10,20,0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F6FA),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,0,0,0),
                            child: Text(
                              "Select Field",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,5,0),
                            child: Icon(Icons.arrow_drop_down_rounded,color: Color(0xFF3CA019)),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,0,0),
                        child: Text("Location",style: TextStyle(fontSize: 14))
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20,10,20,0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F6FA),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,0,0,0),
                            child: Text(
                              "Select Location",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,5,0),
                            child: Icon(Icons.location_on_rounded,color: Color(0xFF3CA019)),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,10,0,0),
                        child: Text("Salary Range",style: TextStyle(fontSize: 14))
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20,10,20,0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F6FA),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,0,0,0),
                            child: Text(
                              "Set Salary Range",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,5,0),
                            child: Icon(Icons.monetization_on_rounded,color: Color(0xFF3CA019)),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,20,20,0),
                    height: 50,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child:Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F6FA),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text("Clear Filter"),
                              ),
                            ),
                        ),
                        Expanded(
                          child:Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            height: 50,
                            decoration: BoxDecoration(
                              color:  Color(0xFF3CA019),
                              border: Border.all(color:  Color(0xFF3CA019)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text("Apply Filter", style:  TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        );
    });
  }
}
