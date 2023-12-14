import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wingtrix/service_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Image.asset("assets/WhatsApp_Image_2023-11-19_at_12.44.18_370ffe77-transformed.png")),
              SizedBox(
                height: 35,
              ),
              ListTile(
                leading: Icon(Icons.language, color: Colors.black, size: 30,),
                title: Text("Our Website"),
                onTap: () async {
                  final Uri _url = Uri.parse('https://wingtrix.in/');
                  if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                  }
                },
                subtitle: Text("Check our Website"),
                splashColor: Colors.orange.shade200, trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.black, size: 20,),
                tileColor: Colors.grey.shade50,
              ),
              ListTile(
                leading: Icon(Icons.work, color: Colors.redAccent, size: 30),
                title: Text("Check our Services"),
                onTap: () async {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Service()));
                },
                subtitle: Text("Take a pick of our Services"),
                splashColor: Colors.orange.shade300, trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.redAccent, size: 20,),
                tileColor: Colors.grey.shade50,
              ),
              ListTile(
                leading: Icon(Icons.map, color: Colors.greenAccent, size: 30),
                title: Text("Locate Us"),
                onTap: () async {
                  final Uri _url = Uri.parse('https://www.google.com/maps?q=15.2803236,73.9558804');
                  if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                  }
                },
                subtitle: Text("Locate us on Google Map"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.greenAccent, size: 20,),
                splashColor: Colors.orange.shade300,
                tileColor: Colors.grey.shade50,
              ),
              Padding(
                padding: const EdgeInsets.only( top : 5, bottom : 5, left: 10),
                child: Text(" ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500), textAlign: TextAlign.start,),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.redAccent, size: 30),
                title: Text("Mail Us"),
                onTap: () async {
                  final Uri _url = Uri.parse('mailto:info@wingtrix.in?subject=Known_more_about_services&body=New%20plugin');
                  if (!await launchUrl(_url)) {
                    throw Exception('Could not launch $_url');
                  }
                },
                subtitle: Text("Contact us on Mail"),
                splashColor: Colors.orange.shade300, trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.redAccent, size: 20,),
                tileColor: Colors.grey.shade50,
              ),
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
                subtitle: Text("Inquire in Whatsapp"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.blueAccent, size: 20,),
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
                subtitle: Text("Follow our Instagram Page"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.purpleAccent, size: 20,),
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
              ListTile(
                leading: Icon(Icons.call, color: Colors.green, size: 30),
                title: Text("Call Us"),
                onTap: () async {
                  final Uri _url = Uri.parse('tel:+91-749-819-9184');
                  if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                  }
                },
                subtitle: Text("Contact us on Phone"), trailing: Icon(Icons.arrow_forward_ios_sharp, color: Colors.green, size: 20,),
                splashColor: Colors.orange.shade300,
                tileColor: Colors.grey.shade50,
              ),

              SizedBox(height: 20,),
              Text("WINGTRIX", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic)),
              Text("Made with ❤️ Technology", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/WhatsApp_Image_2023-11-19_at_12.44.18_370ffe77-transformed.png", height: 80,),
              ),
              Text("Wingtrix version : 1.2", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200)),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
