// import 'package:flutter/material.dart';

// class HomePageCard extends StatelessWidget {
//   const HomePageCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: const Center(
//         child: Text(
//           'IDUTE',
//           style: TextStyle(
//             fontFamily: 'inter',
//             color: Colors.black,
//             fontSize: 20,
//             fontWeight: FontWeight.w300,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final String heading;
  final String count;

  const HomePageCard({
    super.key,
    required this.heading,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontFamily: 'inter',
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            count.toString(),
            style: const TextStyle(
              fontFamily: 'inter',
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
