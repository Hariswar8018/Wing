import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Colors.black54,
        title: Text("What we do ", style : TextStyle(color : Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children : [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/package-alt-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'OEM Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'We provide OEM services to our valuable customers by maintaining strictly the boundaries of specific requirements. If, after the changes have been implemented, a customer with a different vision of the product wishes to purchase then we are always ready to serve customers with mutual benefits.',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/design-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'IoT Design',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'IoT technology is growing and is nowadays vital to business everywhere. To create and develop new business models rapidly and at scale to trigger into a digital transformation in almost every industry; IoT makes it possible. IoT is only restricted by your creativity and willingness to try.',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/signal-signal-tower-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Signal Processing',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Expertise in analyzing, modifying, and synthesizing signals. Experience collaborating with Space Agencies and Railways. Hands-on experience in designing Antenna and Demodulator. Patented work in designing RADAR systems. Providing Signal Processing Solutions with 100% satisfaction.',
              ),
            ),
            SizedBox(height: 10), // Add spacing between sections
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/mobile-phone-signal-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Embedded System Design',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dilate your business with Hardware and Firmware developments. Our Team generates a seamless experience for our valuable customers. Hands-on experience in the field of application of Microchip, ARM, TI, STM, ESP, and much more. We provide low-cost solutions for available turnkey products with excellence and customer delight.',
              ),
            ),
            SizedBox(height: 10), // Add spacing between sections
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/mouse-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Industrial Automation',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Expertise in Systems Programming of Industrial Automation, Process Automation & Control Software. Experience includes Robotics Systems for pipes, tubes, hydraulic process, batch process, general material handling. If any specific application is not listed, feel free to contact us for more examples and details. Wingtrix team may have successfully completed a similar project in the past.',
              ),
            ),
            SizedBox(height: 10), // Add spacing between sections
            Padding(
              padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/windows-applications-svgrepo-com.svg",
                    semanticsLabel: 'Acme Logo', height: 30, color: Colors.blue,
                  ),
                  SizedBox(width: 4,),
                  Text(
                    'Software Development',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Grow your business with our software solutions. Need software solutions to create a better experience for your customers? Here is our team to provide you with the best and secure UI/UX design solutions with a seamless experience, delivering world-class services to the clients.',
              ),
            ),
          ]
        ),
      ),
    );
  }
}
