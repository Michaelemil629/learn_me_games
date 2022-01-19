//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'Items.dart';

class Relatedgame extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Relatedgame> {
  //var player = AudioCache();
  late List<Items> item1;
  late List<Items> item2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    item1 = [
      Items(val: 'lion', name: 'Lion', image: 'assets/lion.png'),
      Items(val: 'panda', name: 'Panda', image: 'assets/panda.png'),
      Items(val: 'camel', name: 'Camel', image: 'assets/camel.png'),
      Items(val: 'dog', name: 'Dog', image: 'assets/dog.png'),
      Items(val: 'cat', name: 'Cat', image: 'assets/cat.png'),
      Items(val: 'horse', name: 'Horse', image: 'assets/horse.png'),
      Items(val: 'sheep', name: 'Sheep', image: 'assets/sheep.png'),
      Items(val: 'hen', name: 'Hen', image: 'assets/hen.png'),
      Items(val: 'fox', name: 'Fox', image: 'assets/fox.png'),
      Items(val: 'cow', name: 'Cow', image: 'assets/cow.png'),
    ];
    item2 = List<Items>.from(item1);

    item1.shuffle();
    item2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (item1.length == 0) gameOver = true;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'My Score: ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: '$score',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              ),
              if (!gameOver)
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: item1.map((item) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Draggable<Items>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 50,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.image),
                              radius: 30,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(flex: 2),
                    Column(
                      children: item2.map((item) {
                        return DragTarget<Items>(
                          onAccept: (receivedItem) {
                            if (item.val == receivedItem.val) {
                              setState(() {
                                item1.remove(receivedItem);
                                item2.remove(item);
                              });
                              score += 10;
                              item.accept = false;

                              //player.play('true.wav');
                            } else {
                              setState(() {
                                score -= 5;
                                item.accept = false;
                                //player.play('false.wav');
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accept = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accept = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accept
                                        ? Colors.grey[400]
                                        : Colors.grey[200],
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                      MediaQuery.of(context).size.width / 6.5,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                    item.name,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  )),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Game Over',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: Text(
                        'New Game',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  String result() {
    if (score == 100) {
      //player.play('success.wav');
      return 'Awesome!';
    } else {
      //player.play('tryAgain.wav');
      return 'Play again to get better score';
    }
  }
}
