import 'package:flutter/material.dart';

class Search_Widget extends StatelessWidget {
  const Search_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => const SearchScreen()));
      // },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: Colors.yellow,
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.1),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'What are you looking for?',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: const Center(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RepeatedTabWidget extends StatelessWidget {
  const RepeatedTabWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Text(
      label,
      style: TextStyle(color: Colors.grey.shade600),
    ));
  }
}
