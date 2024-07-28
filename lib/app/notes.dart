import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.only(
        left: 30.0,
        top: 50.0,
        right: 30.0,
        bottom: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _goToGoogleTask(context),
          Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.orange.shade800,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack _goToGoogleTask(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(
            top: 5.0,
            right: 10.0,
            left: 10.0,
            bottom: 5.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
            color: Colors.white,
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  'Connect your notes to ',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Text(
                  'Google Task',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.orange.shade800),
            color: Colors.orange.shade800,
          ),
          child: IconButton(
            color: Colors.white,
            padding: const EdgeInsets.all(5),
            icon: Image.asset(
              'assets/images/icons/right-arrow.png',
              color: Colors.white,
            ),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }
}
