import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/report_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      /*appBar: AppBar(
        actions: [
          Text("Home Page"),
          Image(image: AssetImage('images/img3.png'))
        ],
      ),*/

      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/dm2.jpg'),
                    fit: BoxFit.contain)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/dbsl.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Dot BD Solutions Limited',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.deepOrange,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(left: 25, right: 20),
              child: Text(
                '(DBSL) Dot DB Solutions is a reputed ICT solutions and consulting company operating in Bangladesh. Our customers typically engage us to analyze their business processes and thereafter assist them in their technology-driven business transformations.',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                primary: false,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginPage()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            height: 70,
                            image: AssetImage('assets/flaticons/report.png'),
                          ),
                          Text('Login Here')
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ReportShowingMethod()));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            height: 70,
                            image: AssetImage('assets/flaticons/settings.png'),
                          ),
                          Text('Settings')
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          height: 70,
                          image: AssetImage('assets/flaticons/skills.png'),
                        ),
                        Text('Skills')
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          height: 70,
                          image: AssetImage('assets/flaticons/graph.png'),
                        ),
                        Text('Graph')
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          height: 70,
                          image: AssetImage('assets/flaticons/money.png'),
                        ),
                        Text('Money')
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Image(
                          height: 70,
                          image: AssetImage('assets/flaticons/invoice.png'),
                        ),
                        Text('Invoice')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
