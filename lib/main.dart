import 'package:flutter/material.dart';
import 'package:test_svg/my_animation.dart';
import 'package:test_svg/resource/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TestView(),
      ),
    );
  }
}

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          Wrap(children: List.generate(100, (index) => const MyAnimation(size: 2))),
          const Expanded(child: TestList()),
        ],
      ),
    );
  }
}

class TestList extends StatefulWidget {
  const TestList({Key? key}) : super(key: key);

  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  int count = 3000;

  void minus() {
    setState(() => count = count - 5);
  }

  void plus() {
    setState(() => count = count + 5);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('$count'),
            ElevatedButton(onPressed: minus, child: const Text('-')),
            ElevatedButton(onPressed: plus, child: const Text('+')),
            Assets.images.circleHeatSvgrepoCom.svg(width: 24, height: 24, color: Colors.red),
            Assets.images.cloudArrowDownSvgrepoCom.svg(width: 24, height: 24, color: Colors.indigo),
            Assets.images.cloudBoltSvgrepoCom.svg(width: 24, height: 24, color: Colors.purple),
            Assets.images.cloudFogSvgrepoCom.svg(width: 24, height: 24, color: Colors.orange),
            Assets.images.cloudMoonSvgrepoCom.svg(width: 24, height: 24, color: Colors.blue),
            Assets.images.cloudRainAlt1SvgrepoCom.svg(width: 24, height: 24, color: Colors.green),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.black12,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: count,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          color: Colors.black12,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // https://www.svgrepo.com/collection/dazzle-line-icons/
                              Assets.images.circleHeatSvgrepoCom.svg(width: 24, height: 24, color: Colors.red),
                              Assets.images.cloudArrowDownSvgrepoCom.svg(width: 24, height: 24, color: Colors.indigo),
                              Assets.images.cloudBoltSvgrepoCom.svg(width: 24, height: 24, color: Colors.purple),
                              Assets.images.cloudFogSvgrepoCom.svg(width: 24, height: 24, color: Colors.orange),
                              Assets.images.cloudMoonSvgrepoCom.svg(width: 24, height: 24, color: Colors.blue),
                              Assets.images.cloudRainAlt1SvgrepoCom.svg(width: 24, height: 24, color: Colors.green),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
