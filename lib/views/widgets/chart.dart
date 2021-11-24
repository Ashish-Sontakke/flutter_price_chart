import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey,
        width: 1.0,
      )),
      child: CustomPaint(
        foregroundPainter: BackgroundPainter(),
        painter: ChartPainter(),
        child: Container(),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  List<int> prices = [
    60238,
    64022,
    61762,
    60175,
    62141,
    64239,
    63683,
    64884,
    60262,
    61907,
    62949,
    63536,
    61226,
    61841,
    60438,
    63220,
    62955,
    64546,
    64809,
    63211,
    62954,
    60542,
    64339,
    63253,
    64769,
    60979,
    60396,
    61707,
    63396,
    63514,
    62898,
    62322,
    60430,
    63446,
    63128,
    62084,
    61368,
    64971,
    62550,
    62140,
    61738,
    63118,
    60363,
    63682,
    60484,
    62964,
    62681,
    64351,
    61434,
    60398
  ];
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xff4B40EE)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var path = Path();
    for (int i = 0; i < prices.length; i++) {
      path.lineTo(i * size.width / prices.length,
          (prices[i] - 58000) * size.height / 10000);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xff6F7177)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var path = Path();
    path.moveTo(0, size.height);
    for (var i = 0; i < size.width; i++) {
      if (i % 5 == 0) {
        path.moveTo(i.toDouble(), size.height);
        path.lineTo(i.toDouble(), size.height - 10);
      }
      if (i % 50 == 0) {
        path.moveTo(i.toDouble(), size.height);
        path.lineTo(i.toDouble(), size.height - 50);
      }
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
