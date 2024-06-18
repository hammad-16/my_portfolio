class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? Link;


  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.Link,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/tictactoe.jpg',
    title: 'Tic-Tac-Toe',
    subtitle:
    'A fun 2 player Tic Tac Toe game',
    Link:
    'https://github.com/hammad-16/TicTacToe',
  ),
  ProjectUtils(
    image: 'assets/projects/worldnight.jpg',
    title: 'World Time',
    subtitle:
    'This app helps in selecting different cities across the world and show the local time',
    Link:
    'https://github.com/hammad-16/World-Time',

  ),
  ProjectUtils(
      image: 'assets/projects/chatapp.jpg',
      title: 'Lets Chat',
      subtitle:
      'A chatting app to communicate with your friends(Under Work)',
      Link:
      'https://apps.apple.com/tr/app/pocket-dictionary-1/id6447465115'),

  ];