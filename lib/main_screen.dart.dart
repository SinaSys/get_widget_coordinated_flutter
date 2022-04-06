import 'package:flutter/material.dart';
import 'package:pop_up_list_view_flutter/extensions.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final GlobalKey _key = GlobalKey();
  static const textStyle = TextStyle(color: Colors.white,fontWeight: FontWeight.bold);

  //Finding X and Y coordinates of a widget
  // void _getOffset(GlobalKey key) {
  //   RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
  //   Offset? position = box?.localToGlobal(Offset.zero);
  //   if (position != null) {
  //     setState(() {
  //       _x = position.dx;
  //       _y = position.dy;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: width*0.5,
          height: height*0.5,
          color: Colors.blueAccent,
          key: _key,
          child: Column(
            children: [
              ElevatedButton(
                child: const Text("Calculate container size"),
                onPressed: (){
                  debugPrint("Container width is ${_key.getWidgetSize!.width}");
                  debugPrint("Container height is ${_key.getWidgetSize!.height}");
                },
              ),
              const SizedBox(height: 10),
              Text("Container width is ${_key.getWidgetSize?.width}",style: textStyle),
              const SizedBox(height: 5),
              Text("Container height is ${_key.getWidgetSize?.height}",style: textStyle)
            ],
          )
        ),
      ),
    );
  }
}
