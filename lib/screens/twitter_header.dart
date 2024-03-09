import 'package:flutter/material.dart';
import 'package:flutter_twitter_profile/screens/custom_richText.dart';

class TwitterProfileHeader extends StatelessWidget {
  const TwitterProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 129),
            padding: const EdgeInsets.fromLTRB(13, 55, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'John',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                  textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false),
                ),
                Text(
                  '@vincent_kogei',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600),
                ),
                const SizedBox(height: 13),
                const Text(
                  'Building a 1m/y software development agency ✨. Rising by lifting others ',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.local_activity,
                        size: 15, color: Colors.grey.shade600),
                    const SizedBox(width: 8),
                    Text('Born 6 November 1998',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600))
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.calendar_month,
                        size: 15, color: Colors.grey.shade600),
                    const SizedBox(width: 8),
                    Text('Joined September 2022',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600))
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    CustomRichText(info: '100', title: 'Following'),
                    SizedBox(width: 10),
                    CustomRichText(info: '100', title: 'Follower')
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 129,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.only(top: (258.5 - 70) / 2),
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/42339869?v=4'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.withOpacity(0.5))),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}