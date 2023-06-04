import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff9BA4B5),
          appBar: AppBar(
            title: Text(
              "Tugas 1 UNITY",
            ),
            centerTitle: true,
            backgroundColor: Color(0xff212A3E),
          ),
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 135),
                height: 300,
                child: WaveWidget(
                  config: CustomConfig(gradients: [
                    [Color(0xff404258), Color(0xff27374D)],
                    [Color(0xff474E68), Color(0xff394867)],
                    [Color(0xff9BA4B5), Color.fromARGB(255, 128, 136, 168)]
                  ], durations: [
                    3500,
                    19440,
                    10800
                  ], heightPercentages: [
                    0.20,
                    0.23,
                    0.34
                  ]),
                  size: Size(double.infinity, double.infinity),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.only(top: 380, left: 50, right: 50),
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Center(
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 10, top: 85),
                                    child: Text(
                                      "Roman Bojoh",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 26),
                                    ))),
                            Text(
                              '220211060290',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Center(
                              child: Container(
                                width: 350,
                                height: 50,
                                margin: const EdgeInsets.only(top: 10),
                                child: Text(
                                  '"Seorang Pendekar Pedang Bermata Dua yang Mejelajah Lautan Samudra Pasifik"',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffF1F6F9),
                        ),
                      ),
                      Image(
                        image: AssetImage("../assets/wave.png"),
                        fit: BoxFit.cover,
                      ),
                    ],
                  )),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 140),
                  padding: const EdgeInsets.all(50),
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(160),
                    color: const Color(0XFFF1F6F9),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 140),
                  padding: const EdgeInsets.all(50),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("../assets/profile.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(150),
                    color: const Color(0XFFF1F6F9),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 330,
                  height: 200,
                  margin: EdgeInsets.only(top: 340),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("../assets/FB.png")),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("../assets/GIT.png")),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("../assets/IG.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
