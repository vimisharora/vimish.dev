import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Linkbar extends StatelessWidget {
  const Linkbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton  (
          icon: SvgPicture.asset("image/github.svg",color: Colors.white,),
          onPressed:()=> _launchURL("https://github.com/vimisharora"),),
        IconButton  (
          icon: const Icon(Icons.mail_outline),
          onPressed: ()=> _sendmail(Uri(scheme: 'mailto',
    path: 'vimisharora@gmail.com',
    queryParameters: {
    'subject': 'Default Subject',
    'body': 'Default body'})),),
        IconButton  (
          icon: SvgPicture.asset("image/leetcode.svg",color: Colors.white,),
          onPressed: ()=> _launchURL("https://leetcode.com/vimisharora/"),),
        IconButton  (
          icon: SvgPicture.asset("image/linkedin.svg",color: Colors.white,),
          onPressed: ()=> _launchURL("https://www.linkedin.com/in/vimish-arora-838135207/"),),

        // const Text("two"),
        // const Text('three'),
      ],
    );
  }
  _launchURL(url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
    }
  _sendmail(uri) async {
    if (await canLaunchUrl(uri)){
      await launchUrl(uri);
    }
  }
  }

