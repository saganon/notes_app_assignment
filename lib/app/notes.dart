import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.only(
        left: 20.0,
        top: 50.0,
        right: 20.0,
        bottom: 30.0,
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 5.0,
              right: 10.0,
              bottom: 5.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  'Connect your notes to Google Task',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amber),
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
