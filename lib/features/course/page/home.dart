import 'package:flutter/material.dart';

class CourseHomePage extends StatelessWidget {
  const CourseHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Text(
                "Choose your",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Course",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 52,
            padding: EdgeInsets.only(right: 12),
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.indigo.shade100,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 28,
          children: [
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Search for courses',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            Text(
              "Category",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              spacing: 20,
              children: [
                FilledButton(onPressed: () {}, child: Text("Ui/Ux")),
                OutlinedButton(onPressed: () {}, child: Text("Coding")),
                OutlinedButton(onPressed: () {}, child: Text("Other")),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 80),
                  Container(
                    width: 320,
                    height: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade200,
                    ),

                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -60,
                          top: 0,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage('assets/images/10387887.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 75),
                            child: Column(
                              spacing: 16,

                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "User Interface Design",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "24 Lesson",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelLarge,
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.3",
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelLarge,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.primaries.first,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
