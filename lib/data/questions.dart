import 'package:not_my_first_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('Gonk', [
    'A novice member of a team, representing rank-and-file grunts or muscle.',
    'Newbie with cobbled-together, junky cybernetics.',
    'Tech-illiterate newbie, easily hacked and confused.',
    'Expendable grunt, absorbs bullets for others',
  ]),
  QuizQuestion(
    'Team',
    [
      'All of the models controlled by a single player.',
      'Meat and chrome under one netrunner.',
      'Same chrome, same data-dealer\'s orders.',
      'One decker\'s digital and meat puppets.',
    ],
  ),
  QuizQuestion(
    'Rival',
    [
      'The opposing player; a model controlled by an opposing player.',
      'Another decker\'s meat and chrome puppets.',
      'Opposing chrome, vying for the same turf',
      'Expendable grunt, absorbs bullets for others',
    ],
  ),
  QuizQuestion(
    'Silent',
    [
      '[RE]actions may only target an unobscured attacker',
      'Newbie with cobbled-together, junky cybernetics.',
      'Tech-illiterate newbie, easily hacked and confused.',
      'Another decker, hacking for different data.',
    ],
  ),
  QuizQuestion(
    'Used',
    [
      'A “face down” Action Token, cannot be spent to take an action.',
      'Gonk\'s circuits are burnt, no action until next round.',
      'Model\'s signal is scrambled, can\'t act until reconnected.',
      'All the ammo is used up. Can\'t fire.',
    ],
  ),
  QuizQuestion(
    'Size of a Game',
    [
      '100 to 200 EB',
      '1000 Latinum',
      'It\'s not a game. It\'s life',
      '5 Gold',
    ],
  ),
  QuizQuestion(
    'Street Cred',
    [
      'The measure of team\'s or character\'s reputation.',
      'How much credit you can spend on a character.',
      'Only for certain gangs.',
      'Unlimited.',
    ],
  ),
  QuizQuestion(
    'Specialist',
    [
      'Your team may only include one of this model (but may include other Specialist models).',
      'No one is special. Everyone is disposable.',
      'Only one per gang.',
      'Entire gang can be special.',
    ],
  ),
  QuizQuestion(
    'Walking Fire',
    [
      'A penalty to Rapid actions when targeting multiple models. ',
      'Gang member that is hot.',
      'Can be opposed with Running Water.',
      '1 dice bonus to Rapid actions.',
    ],
  ),
];
