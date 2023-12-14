import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wingtrix/service_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: buildDrawer(context),
        floatingActionButton: Container(
          child : InkWell(
            onTap: () async {
              final Uri _url = Uri.parse('https://wa.me/917498199184?text=Hi%20Wingtrix');
              if (!await launchUrl(_url)) {
              throw Exception('Could not launch $_url');
              }
            },
            child: SvgPicture.asset(
              "assets/whatsapp-svgrepo-com.svg",
              semanticsLabel: 'Acme Logo', height: 50,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xffe55c0c),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title:
              Text("Wingtrix", style: TextStyle(fontWeight: FontWeight.w600, color : Colors.white)),
        ),
        body: Container(
          color: Colors.black87,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  "https://www.247software.com/hubfs/blog-images/fingertip%20touching%20innovative%20solution%20cubes%20feature.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'WHO WE ARE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900, fontFamily: "font2"
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Design of OEM Product and Firmware/Software Development. We are active in the fields of Embedded Systems Design for Product Developments, IoT Design, Signal Processing, Software Development, Industrial Automation.',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( top :20 , left : 10, right : 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/goal-svgrepo-com.svg",
                        semanticsLabel: 'Acme Logo',
                        height: 30,
                      ),
                      SizedBox(width : 4),
                      Text(
                        'Planning',
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
                      'The Project is planned according to the innovative ideas by our valuable clients which are implemented by Wingtrix Research Team. New Ideas are always welcomed by our team. “Your Ideas Our Implementation Your Products” is the main motto of our company.',
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
                        'Design',
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
                      'Standard ISO procedures are followed to Design and Develop the products. Wingtrix assures their clients with accuracy, efficient and fast product creation which can collaborate seamlessly in the same workspace and in real-time.',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/control-slide-smart-svgrepo-com.svg",
                        semanticsLabel: 'Acme Logo', height: 30,
                      ),
                      SizedBox(width: 4,),
                      Text(
                        'Implementation',
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
                      'Valuable Research Team for implementation which provides pooled talent and focuses on knowledge management, change on request services. Implementation of applications interfacing our forte providing end-to-end services.',
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only( top :10 , left : 10, right : 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/document-lock-svgrepo-com.svg",
                        semanticsLabel: 'Acme Logo', height: 30,
                      ),
                      SizedBox(width: 4,),
                      Text(
                        'Documentation',
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
                      'It\'s obvious that every stage of design and implementation is important to get particularly crucial to a successful outcome. BOM management services to deliver standards\' compliant manufacturing. Detailed product-related documents are fulfilled by our team.',
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add spacing between sections
                Center(
                  child: Text(
                    'WHAT WE DO',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: "font2"
                    ),
                  ),
                ),
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
                SizedBox(height : 15),
                SizedBox(height : 10),
                // Continue with the remaining sections...
              ],
            ),
          ),
        ));
  }


  Widget buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
                width: MediaQuery.of(context).size.width, height: 200,
                child: Image.asset("assets/wingtrix [Recovered]_prev_ui.png")),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Colors.black,
              size: 30,
            ),
            title: Text("Our Website"),
            onTap: () async {
              final Uri _url = Uri.parse('https://wingtrix.in/');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            splashColor: Colors.orange.shade200,
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
              size: 20,
            ),
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading: Icon(Icons.work, color: Colors.redAccent, size: 30),
            title: Text("Our Services"),
            onTap: () async {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Service()));
            },
            splashColor: Colors.orange.shade300,
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.redAccent,
              size: 20,
            ),
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading: Icon(Icons.map, color: Colors.greenAccent, size: 30),
            title: Text("Locate on Map"),
            onTap: () async {
              final Uri _url = Uri.parse(
                  'https://www.google.com/maps?q=15.2803236,73.9558804');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.greenAccent,
              size: 20,
            ),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading: Icon(Icons.mail, color: Colors.redAccent, size: 30),
            title: Text("Mail Us"),
            onTap: () async {
              final Uri _url = Uri.parse(
                  'mailto:info@wingtrix.in?subject=Known_more_about_services&body=New%20plugin');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            splashColor: Colors.orange.shade300,
            trailing: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.redAccent,
              size: 20,
            ),
            tileColor: Colors.grey.shade50,
          ),
          /*ListTile(
            leading: Icon(Icons.facebook,color: Colors.blueAccent, size: 30),
            title: Text("Facebook"),
            onTap: () async {

            },
           trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueAccent, size: 20,),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),*/
          ListTile(
            leading: SvgPicture.asset(
              "assets/whatsapp-svgrepo-com.svg",
              semanticsLabel: 'Acme Logo', height: 30,
            ),
            title: Text("Whatsapp"),
            onTap: () async {
              final Uri _url = Uri.parse('https://wa.me/917498199184?text=Hi%20Wingtrix');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            subtitle: Text("Inquire in Whatsapp"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.green, size: 20,),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading: Icon(Icons.facebook,color: Colors.blueAccent, size: 30),
            title: Text("Facebook"),
            onTap: () async {
              final Uri _url = Uri.parse('https://www.facebook.com/profile.php?id=61553592280518');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            subtitle: Text("Check our Facebook Page"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueAccent, size: 20,),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading:  SvgPicture.asset(
              "assets/instagram-1-svgrepo-com.svg",
              semanticsLabel: 'Acme Logo', height: 30,
            ),
            title: Text("Instagram"),
            onTap: () async {
              final Uri _url = Uri.parse('https://instagram.com/wingtrixengineering?igshid=MzMyNGUyNmU2YQ');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            subtitle: Text("Follow on Instagram"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.purpleAccent, size: 20,),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),
          ListTile(
            leading: SvgPicture.asset(
              "assets/linkedin-color-svgrepo-com.svg", height: 30,
              semanticsLabel: 'Acme Logo',
            ),
            title: Text("LinkedIn"),
            onTap: () async {
              final Uri _url = Uri.parse('https://www.linkedin.com/in/wingtrix-engineering-solutions-9856611b3?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
            subtitle: Text("Join LinkedIn profile"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.orange, size: 20,),
            splashColor: Colors.orange.shade300,
            tileColor: Colors.grey.shade50,
          ),

          /*SizedBox(height: 20,),
          Text("WINGTRIX", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
          Text("Made with ❤️ Technology", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/WhatsApp_Image_2023-11-19_at_12.44.18_370ffe77-transformed.png", height: 80,),
          ),
          Text("Wingtrix version : 1.2", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200)),
          SizedBox(height: 20,),*/
          // Add more ListTile widgets for additional menu items
        ],
      ),
    );
  }
}
