//https://picsum.photos/200/300   // ⌘ ñ
//use lint
//import '../widget/detailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:future_to_provider/provider/provider_job.dart';
import 'package:future_to_provider/provider/provider_job_details.dart';
import 'package:future_to_provider/screens/job_list_detail_screen.dart';
import 'package:provider/provider.dart';

import 'screens/job_list_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => PrividerJob1()),
        ChangeNotifierProvider(create: (ctx) => PrividerJob2()),
      ],
      child: MaterialApp(
        title: 'homepage',
        debugShowCheckedModeBanner: false,
        home: JobScreen1(),
        routes: {
          JobScreen2.routeName: (context) => JobScreen2(),
          JobScreen1.routeName: (context) => JobScreen1(),
        },
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('appbar'),
//         // shape: CustomShapeBorder(),
//         actions: [],
//       ),
//       backgroundColor: Colors.black54,
//       body: JobScreen(),
//       drawer: Drawer(),
//     );
//   }
// }

/*
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, { TextDirection? textDirection}) {
    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75,
        rect.height + 50);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}
*/
