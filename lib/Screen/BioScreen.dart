import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vp12_bio_app/widdget/BioCard.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Bio',
          style: TextStyle(
            color: Colors.purple,
            fontFamily: 'Libre Baskervill',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Image.network(
                'https://media.istockphoto.com/vectors/abstract-black-geometric-shape-background-with-diagonal-line-texture-vector-id1286823569?k=20&m=1286823569&s=612x612&w=0&h=qU-491Nnw0fhANwB9JN5U4AVGpYg3GmrBY1mjfAOWmw=',
                height: double.infinity,
                fit: BoxFit.cover,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
                     const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/avatarimage.png')),
              const SizedBox(height: 10),
             const Text(
                'Manar Alwadia',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Flutter Course_visionplus',
                style: TextStyle(
                  color: Colors.purple,
                  letterSpacing: 2,
                  fontSize: 15,
                ),
              ),
              const Divider(
                thickness: 0.8,
                color: Colors.brown,
                height: 30,
                indent: 40,
                endIndent: 40,
              ),
              CardWidget(
                traColor: Colors.white,
                leadingIcon: Icons.email,
                title: 'Email',
                subtitle: 'email@123.com',
                trailingIcon: Icons.send,
                marginBottom: 10,
                onpressed: () {
                  print('Email');
                },
                ledColor: Colors.white,
              ),
              CardWidget(
                leadingIcon: Icons.phone_android,
                title: 'Mobil',
                subtitle: '+972-059-2468-123 ',
                trailingIcon: Icons.phone,
                onpressed: () {
                  print('phone');
                },
                ledColor: Colors.white,
                traColor: Colors.white,
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Flutter 2022',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class CardWidget extends StatelessWidget {
//   const CardWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         margin: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListTile(
//           leading: const Icon(Icons.email),
//           title: const  Text('Email',style: TextStyle(color: Colors.blue),),
//           subtitle:  const Text('email@123.com',
//               style: TextStyle(fontFamily: 'LibreBaskeeville',color: Colors.indigo)
//
//           ),
//           trailing: IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.send),
//           ),
//         ));
//   }
// }
