import 'package:flutter/material.dart';
import 'package:gallery/back_button_widget.dart';
class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double windowHeight = size.height;
    final double windowWidth = size.width;
    return Scaffold(
       appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
             Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
          
           Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
          
           Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
          Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
            Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
            Expanded(
              child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BMTg3NDUzOTc3MV5BMl5BanBnXkFtZTcwNjcxMDkxNw@@._V1_.jpg',
              fit: BoxFit.cover,
              width: windowWidth/3,
              height: 500,
            )),
          ],
        )
      ),
      bottomNavigationBar: const CustomBackButton(text: 'kembali')
    );
  }
}