import 'package:flutter/material.dart';

class customButtomAction extends StatefulWidget {
  const customButtomAction({super.key});

  @override
  State<customButtomAction> createState() => _customButtomActionState();
}

class _customButtomActionState extends State<customButtomAction> {
  bool isFreePreview = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFreePreview = !isFreePreview;
          });
        },
        child: Container(
          width: 330,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: isFreePreview ? Colors.white : Colors.redAccent,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '19.99€',
                    style: TextStyle(
                      color: isFreePreview ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: isFreePreview ? Colors.redAccent : Colors.white,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Free preview',
                    style: TextStyle(
                        color: isFreePreview ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
