import 'package:flutter/material.dart';

const users = [
  userGordon,
  userSalvatore,
  userSacha,
  userDeven,
  userSahil,
  userReuben,
  userNash,
];

const userGordon = DemoUser(
  id: 'kitkat',
  name: 'KIT-KAT Kittie',
  image: 'https://image.emojipng.com/383/10508383.jpg',
);
const userSahil = DemoUser(
  id: 'tomato',
  name: 'Lazy Tomato',
  image:
      'https://i.pinimg.com/originals/80/e2/73/80e27352eda9cf9881aa05460391d6ed.png',
);

const userReuben = DemoUser(
  id: 'pizza',
  name: 'Happy Pizza',
  image: 'https://avatarfiles.alphacoders.com/167/thumb-1920-167620.gif',
);

const userNash = DemoUser(
  id: 'burrito',
  name: 'Cool-Burrito',
  image:
      'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/03/037482ffce2f367b387ebdcf6b869cc3c35902f9_full.jpg',
);
const userSalvatore = DemoUser(
  id: 'avacado',
  name: 'Angry Avacado',
  image:
      'https://image.shutterstock.com/image-vector/cute-happy-avocado-character-funny-260nw-1658070313.jpg',
);

const userSacha = DemoUser(
  id: 'ice-cream',
  name: 'Sexy IceCream',
  image:
      'https://media.istockphoto.com/vectors/cartoon-cute-ice-cream-icon-isolated-on-white-background-vector-id1142845154',
);

const userDeven = DemoUser(
  id: 'apple',
  name: 'Tasty Apple',
  image:
      'https://cdn1.iconfinder.com/data/icons/fruit-cartoon-flat-cute-fruity/512/apple-512.png',
);

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}
