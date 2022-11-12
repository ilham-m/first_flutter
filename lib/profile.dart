import 'package:flutter/material.dart';
import 'package:gallery/back_button_widget.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                    )
                ],
              )),
              const SizedBox(width: 10),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                 SizedBox(
                  height: 30,
                  child: Text('Nama : Rowan Atkinson'),
                 ),
                 SizedBox(
                  height: 30,
                  child: Text('Umur : 67 tahun'),
                 ),SizedBox(
                  height: 30,
                  child: Text('Film : Johnny English, Mr.Bean, Man Vs Bee'),
                 ),
                ],
              ))
            ],
          ),
      ),
      bottomNavigationBar: const CustomBackButton(text: 'kembali')
    );
  }
}