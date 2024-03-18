import 'package:flutter/material.dart';
import 'package:koya/const.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SingleCourseView extends StatefulWidget {
  const SingleCourseView({super.key});

  @override
  State<SingleCourseView> createState() => _SingleCourseViewState();
}

class _SingleCourseViewState extends State<SingleCourseView> {
  @override
  Widget build(BuildContext context) {
    PanelController payPanelController = PanelController();

    void closePanelCallback() {
      payPanelController.close();
    }

    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: SlidingUpPanel(
              backdropEnabled: true,
              backdropOpacity: 0.8,
              padding: EdgeInsets.all(13),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              collapsed: const Center(child: Text("Collapsed")),
              minHeight: 50.0,
              controller: payPanelController,
              panel: slideUpPanelContent(context, closePanelCallback),
              body: appBody(context),
            )));
  }
}

Widget slideUpPanelContent(context, closePanelCallback) {
  return Column(
    children: [
      const SizedBox(
        height: 60,
      ),
      Table(
        children: const [
          TableRow(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Price"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "NGN475,000",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Tax"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "NGN5,000",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
          ])
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(3),
        margin: const EdgeInsets.all(8),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(AppStyle.primaryColor)),
          onPressed: closePanelCallback,
          child: const Text(
            "Pay",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Widget appBody(context) {
  return Flex(
    direction: Axis.vertical,
    children: [
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.black54,
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'lib/assets/images/10698406_img20191208122427_jpeg016df504c82c39844762551521d1294b.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Expanded(
        flex: 8,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Python\'s Beginers course',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text('Hello'),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
