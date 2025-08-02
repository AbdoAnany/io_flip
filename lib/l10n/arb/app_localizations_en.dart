// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get play => 'PLAY NOW';

  @override
  String get playAgain => 'PLAY AGAIN';

  @override
  String get ioFlip => 'I/O FLIP';

  @override
  String generatingCards(int count, int total) {
    return 'Generating $count of $total';
  }

  @override
  String get gameResultError => 'Error getting game result';

  @override
  String get letsGetStarted => 'LET\'S GET STARTED';

  @override
  String get select => 'Next';

  @override
  String get niceToMeetYou => 'Nice to meet you!';

  @override
  String get introTextPromptPage =>
      'With just a few prompts, I can build you an AI-designed pack of cards featuring some of our favorite Google characters: Dash, Sparky, Android, and Dino, imbued with special powers.';

  @override
  String get characterClassPromptPageTitle =>
      'First, what\'s your team\'s class?';

  @override
  String get powerPromptPageTitle => 'What special powers do they have?';

  @override
  String get leaderboardLongestStreak => 'HIGHEST WIN STREAK';

  @override
  String get leaderboardMostWins => 'HIGHEST TOTAL WINS';

  @override
  String leaderboardPlayerWins(int total) {
    return '$total wins';
  }

  @override
  String get leaderboardFailedToLoad => 'Failed to load leaderboard';

  @override
  String get cardGenerationError =>
      'Error generating cards, please try again in a few moments';

  @override
  String get nextCard => 'Next card';

  @override
  String get gameWonTitle => 'You won!';

  @override
  String get gameLostTitle => 'You lost!';

  @override
  String get gameTiedTitle => 'It\'s a draw!';

  @override
  String gameSummaryStreak(int total) {
    return '$total win streak!';
  }

  @override
  String get cardInspectorText => 'Tap cards to inspect and share';

  @override
  String get nextMatch => 'NEXT MATCH';

  @override
  String get quit => 'QUIT';

  @override
  String get cancel => 'CANCEL';

  @override
  String get continueLabel => 'CONTINUE';

  @override
  String get enter => 'ENTER';

  @override
  String get submitScore => 'SUBMIT SCORE';

  @override
  String get useCard => 'Use card';

  @override
  String get enterYourInitials => 'Enter your initials for the leaderboard';

  @override
  String get continueButton => 'Continue';

  @override
  String get enterInitialsError => 'Please enter three initials';

  @override
  String get blacklistedInitialsError => 'Keep it PG, use different initials';

  @override
  String get sharePageTitle => 'Share your hand!';

  @override
  String get sharePageShareButton => 'Share';

  @override
  String get sharePageMainMenuButton => 'Main Menu';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get mutedItem => 'Muted';

  @override
  String get settingsSoundEffectsItem => 'Sound Effects';

  @override
  String get settingsMusicItem => 'Music';

  @override
  String get settingsCreditsItem => 'Credits, Legal, Links...';

  @override
  String get joinMatch => 'Join a match';

  @override
  String get deckBuildingTitle => 'Pick your team';

  @override
  String get deckBuildingSubtitle => 'Swipe to see the rest of your pack';

  @override
  String get findingMatch => 'Finding match...';

  @override
  String get searchingForOpponents => 'Searching for opponents';

  @override
  String get copyInviteCode => 'Copy invite code';

  @override
  String get matchmaking => 'MATCHMAKING...';

  @override
  String get getReadyToFlip => 'Get ready to FLIP!';

  @override
  String get aiGameByGoogle => 'An AI-designed card game powered by Google';

  @override
  String get quitGameDialogTitle => 'Are you sure?';

  @override
  String get quitGameDialogDescription =>
      'You will lose your current team and end your winning streak.';

  @override
  String get playerAlreadyConnectedError =>
      'I/O FLIP is already open on another tab';

  @override
  String get playerAlreadyConnectedErrorBody =>
      'You can only play on one tab at a time.';

  @override
  String get unknownConnectionError => 'Unable to connect';

  @override
  String get unknownConnectionErrorBody => 'Please try again in a few moments.';

  @override
  String get unknownConnectionErrorButton => 'RETRY';

  @override
  String get devButtonLabel => 'DEVELOPER PROFILE';

  @override
  String get twitterButtonLabel => 'TWITTER';

  @override
  String get facebookButtonLabel => 'FACEBOOK';

  @override
  String get howToPlayIntroTitle =>
      'Grab a pack and create your team from millions of AI-designed cards.';

  @override
  String get howToPlayDeckTitle =>
      'FLIP your way to the top of the leaderboard with the longest winning streak.';

  @override
  String get howToPlayElementsTitle =>
      'FLIP your way to victory! Elemental powers apply extra damage in a match.';

  @override
  String get howToPlayElementsFireTitle =>
      '<yellow>Fire</yellow> scorches <lightblue>air</lightblue> and\nmelts <green>metal</green>.';

  @override
  String get howToPlayElementsAirTitle =>
      '<lightblue>Air</lightblue> blasts <blue>water</blue> and\nblows away <red>earth</red>.';

  @override
  String get howToPlayElementsMetalTitle =>
      '<green>Metal</green> traps <lightblue>air</lightblue> and\ndiverts <blue>water</blue>.';

  @override
  String get howToPlayElementsEarthTitle =>
      '<red>Earth</red> crushes <green>metal</green> and\nsnuffs out <yellow>fire</yellow>.';

  @override
  String get howToPlayElementsWaterTitle =>
      '<blue>Water</blue> puts out <yellow>fire</yellow> and\nerodes <red>earth</red>.';

  @override
  String get shareTeamTitle => 'Share your team!';

  @override
  String get winStreakLabel => 'win streak!';

  @override
  String get shareButtonLabel => 'SHARE';

  @override
  String get mainMenuButtonLabel => 'MAIN MENU';

  @override
  String get infoDialogTitle => 'About I/O FLIP';

  @override
  String get infoDialogDescriptionPrefix => 'Learn';

  @override
  String get infoDialogDescriptionInfixOne => 'how I/O FLIP was made';

  @override
  String get infoDialogDescriptionInfixTwo => 'and\ngrab the';

  @override
  String get infoDialogDescriptionSuffix => 'open source code.';

  @override
  String get infoDialogOtherLinks => 'Other Links';

  @override
  String get ioLinkLabel => 'Google I/O';

  @override
  String get privacyPolicyLinkLabel => 'Privacy Policy';

  @override
  String get termsOfServiceLinkLabel => 'Terms of Service';

  @override
  String get faqLinkLabel => 'FAQ';

  @override
  String get howItsMadeLinkLabel => 'How it\'s made';

  @override
  String get shareCardDisclaimer =>
      'If you choose to share, your card will be made available at a unique URL for 30 days and then automatically deleted.';

  @override
  String get shareCardDialogDescription =>
      'Share your AI-designed creation then head into a match.';

  @override
  String get shareTeamDisclaimer =>
      'If you choose to share, your initials, cards and score will be made available at a unique URL for 30 days and then automatically deleted.';

  @override
  String get shareTeamDialogDescription =>
      'Share your team from I/O FLIP and challenge your friends to beat your streak!';

  @override
  String get termsOfUseTitle => 'I/O FLIP Terms of Use';

  @override
  String get termsOfUseDescriptionPrefix => 'By continuing, I accept the';

  @override
  String get termsOfUseDescriptionInfixOne => 'Terms of Service';

  @override
  String get termsOfUseDescriptionInfixTwo =>
      'and acknowledge that information Google collects about me in connection with I/O FLIP will be processed in accordance with the Google';

  @override
  String get termsOfUseDescriptionSuffix => 'Privacy Policy.';

  @override
  String get termsOfUseAcceptLabel => 'ACCEPT';

  @override
  String get termsOfUseDeclineLabel => 'DECLINE';

  @override
  String get saveButtonLabel => 'SAVE';

  @override
  String get downloadingButtonLabel => 'DOWNLOADING';

  @override
  String get downloadCompleteButtonLabel => 'DOWNLOADED';

  @override
  String get downloadCompleteLabel => 'Download complete';

  @override
  String get downloadFailedLabel => 'Something went wrong, try again';

  @override
  String get blacklistedErrorMessage =>
      'Let’s keep it PG, use different initials';

  @override
  String get termsOfUseContinueLabel => 'CONTINUE';
}
