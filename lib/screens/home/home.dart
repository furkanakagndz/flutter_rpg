import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/screens/home/character_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // List characters = ['mario', 'luigi', 'peach', 'toad', 'bowser', 'koopa'];







  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const StyledTitle("Your Characters"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  // physics: const ScrollPhysics(),
                  itemCount: characters.length,
                  itemBuilder: (_, index) {
                    return CharacterCard(characters[index]);
                    // Container(
                    //   color: Colors.grey[800],
                    //   padding: const EdgeInsets.all(40),
                    //   margin: const EdgeInsets.only(bottom: 40),
                    //   child: Text(characters[index]),
                    // );
                  },
                ),
              ),

              StyledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) => const Create()
                    ));
                }, 
                child: const StyledHeading('Create New')),
            ],
          ),
        ));
  }
}
