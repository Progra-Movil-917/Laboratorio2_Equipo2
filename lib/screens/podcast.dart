import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcast'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: <Widget>[
              Image.network(
                'https://images.alphacoders.com/135/thumb-1920-1350421.jpeg',
                height: 400.h,
                width: 400.w,
              ),
              const Text(
                'Nombre del Podcast',
                style: TextStyle(fontSize: 24),
              ),
              const Text(
                'Autor del Podcast',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('00:00'),
                  Expanded(
                    child: Slider(
                      value: 0,
                      onChanged: (double value) {},
                      min: 0,
                      max: 100,
                    ),
                  ),
                  const Text('30:00'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    // Nuevo botón de "Random"
                    icon: const Icon(Icons.shuffle),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.fast_rewind),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.fast_forward),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.repeat),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
