import 'package:flutter/material.dart';
import 'package:bunnie/app/shared/models/user.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';

class UserHeader extends StatelessWidget {
  final User user;

  const UserHeader({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedImage(
              height: 48,
              width: 48,
              borderRadius: BorderRadius.circular(8),
              imageUrl: user.profilePhoto ?? '',
            ),
            const SizedBox(width: 8),
            SizedBox(
              height: 48,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      color: BunnieColors.brown,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '@${user.username}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: BunnieColors.blackBrown,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Follow'),
        ),
      ],
    );
  }
}
