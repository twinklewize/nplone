import 'package:flutter/material.dart';
import 'package:n_plus_one/domain/entities/old_entities/user_pay_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/news_widgets/news_card_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/two_buttons.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Buttons
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: TwoButtons(
              icon_1: 'assets/icons/plus_icon.svg',
              text_1: 'News',
              icon_2: 'assets/icons/vertical_more_icon.svg',
              text_2: 'Actions',
              onPressed_1: () {},
              onPressed_2: () {
                Navigator.of(context).pushNamed('/shared-zone-actions');
              },
            ),
          ),

          // Cards
          NewsCardWidget(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 10,
            messageCount: 5,
            shareCount: 19,
            viewCount: 13,
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCardWidget(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            transaction: 20000.00,
            userPayList: [
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/g72brFF/Avatar.jpg',
                name: 'Anton Scmidt',
                count: 0,
                total: 2000,
                isMe: true,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
                name: 'Maria Carlos',
                count: 0,
                total: 2000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
                name: 'Caroline Smith',
                count: 2000,
                total: 2000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
                name: 'Daria Loures',
                count: 500,
                total: 1000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/ZKgHKKb/Avatar-4.jpg',
                name: 'Bran Darlos',
                count: 499.99,
                total: 2000,
              ),
            ],
            paySum: 2000,
            payButton: () {},
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCardWidget(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            transaction: -20000.00,
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCardWidget(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            bet: true,
            sum: 1200,
            creator: 'Anton Smith',
            deadline: '2 Feb 2022',
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCardWidget(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 10,
            messageCount: 5,
            shareCount: 19,
            viewCount: 13,
            vote: true,
            sum: 200,
            creator: 'Andre Smith',
            deadline: '3 Feb 2022',
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
        ],
      ),
    );
  }
}
