import 'package:flutter/material.dart';

class activeCard extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String thrirdText;
  final String fourthText;
  const activeCard({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thrirdText,
    required this.fourthText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 18,
                      child: Text(
                        firstText,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "$secondText",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "$thrirdText",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.error_outline),
                  ),
                  Text(fourthText),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
