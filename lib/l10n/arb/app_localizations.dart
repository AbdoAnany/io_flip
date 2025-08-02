import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// Label play
  ///
  /// In en, this message translates to:
  /// **'PLAY NOW'**
  String get play;

  /// Label play again
  ///
  /// In en, this message translates to:
  /// **'PLAY AGAIN'**
  String get playAgain;

  /// I/O FLIP - Name of the game
  ///
  /// In en, this message translates to:
  /// **'I/O FLIP'**
  String get ioFlip;

  /// Label shown on the draft page.
  ///
  /// In en, this message translates to:
  /// **'Generating {count} of {total}'**
  String generatingCards(int count, int total);

  /// Displayed when error while getting game result
  ///
  /// In en, this message translates to:
  /// **'Error getting game result'**
  String get gameResultError;

  /// label let's get started
  ///
  /// In en, this message translates to:
  /// **'LET\'S GET STARTED'**
  String get letsGetStarted;

  /// label select
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get select;

  /// label nice to meet you
  ///
  /// In en, this message translates to:
  /// **'Nice to meet you!'**
  String get niceToMeetYou;

  /// Text for the intro when selecting the prompt to build the deck
  ///
  /// In en, this message translates to:
  /// **'With just a few prompts, I can build you an AI-designed pack of cards featuring some of our favorite Google characters: Dash, Sparky, Android, and Dino, imbued with special powers.'**
  String get introTextPromptPage;

  /// Title of the prompt page for character class
  ///
  /// In en, this message translates to:
  /// **'First, what\'s your team\'s class?'**
  String get characterClassPromptPageTitle;

  /// Title of the prompt page for power
  ///
  /// In en, this message translates to:
  /// **'What special powers do they have?'**
  String get powerPromptPageTitle;

  /// Label shown on the leaderboard for the longest streak category tab
  ///
  /// In en, this message translates to:
  /// **'HIGHEST WIN STREAK'**
  String get leaderboardLongestStreak;

  /// Label shown on the leaderboard for the most wins category tab
  ///
  /// In en, this message translates to:
  /// **'HIGHEST TOTAL WINS'**
  String get leaderboardMostWins;

  /// Label shown on the leaderboard to show the total wins of a player
  ///
  /// In en, this message translates to:
  /// **'{total} wins'**
  String leaderboardPlayerWins(int total);

  /// Label shown on the leaderboard when it fails to load
  ///
  /// In en, this message translates to:
  /// **'Failed to load leaderboard'**
  String get leaderboardFailedToLoad;

  /// Label show when there is an error generating a deck
  ///
  /// In en, this message translates to:
  /// **'Error generating cards, please try again in a few moments'**
  String get cardGenerationError;

  /// Label show on the draft page to show the next card
  ///
  /// In en, this message translates to:
  /// **'Next card'**
  String get nextCard;

  /// Game summary title when player won
  ///
  /// In en, this message translates to:
  /// **'You won!'**
  String get gameWonTitle;

  /// Game summary title when player lost
  ///
  /// In en, this message translates to:
  /// **'You lost!'**
  String get gameLostTitle;

  /// Game summary title when game tied
  ///
  /// In en, this message translates to:
  /// **'It\'s a draw!'**
  String get gameTiedTitle;

  /// Label shown on the summary to show the current win streak of a player
  ///
  /// In en, this message translates to:
  /// **'{total} win streak!'**
  String gameSummaryStreak(int total);

  /// Text shown on game summary to allow the user that can inspect cards
  ///
  /// In en, this message translates to:
  /// **'Tap cards to inspect and share'**
  String get cardInspectorText;

  /// Label show on the summary page to start the next match
  ///
  /// In en, this message translates to:
  /// **'NEXT MATCH'**
  String get nextMatch;

  /// Label showing to quit game
  ///
  /// In en, this message translates to:
  /// **'QUIT'**
  String get quit;

  /// Label showing to cancel an action
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get cancel;

  /// Label showing to continue an action
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get continueLabel;

  /// Label showing to enter
  ///
  /// In en, this message translates to:
  /// **'ENTER'**
  String get enter;

  /// Label showing to submit score
  ///
  /// In en, this message translates to:
  /// **'SUBMIT SCORE'**
  String get submitScore;

  /// Label show on the draft page to use the card
  ///
  /// In en, this message translates to:
  /// **'Use card'**
  String get useCard;

  /// Subtitle on the leaderboard entry page to prompt users to enter their initials
  ///
  /// In en, this message translates to:
  /// **'Enter your initials for the leaderboard'**
  String get enterYourInitials;

  /// Continue button label
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Leaderboard initials textfield validation error text
  ///
  /// In en, this message translates to:
  /// **'Please enter three initials'**
  String get enterInitialsError;

  /// Leaderboard initials textfield validation error text when the initials are blacklisted
  ///
  /// In en, this message translates to:
  /// **'Keep it PG, use different initials'**
  String get blacklistedInitialsError;

  /// Title shown on the share page
  ///
  /// In en, this message translates to:
  /// **'Share your hand!'**
  String get sharePageTitle;

  /// Button text for the share button on the share page
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get sharePageShareButton;

  /// Button text for the main menu button on the share page
  ///
  /// In en, this message translates to:
  /// **'Main Menu'**
  String get sharePageMainMenuButton;

  /// Title shown on the settings page
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsPageTitle;

  /// Title of the muted item in settings
  ///
  /// In en, this message translates to:
  /// **'Muted'**
  String get mutedItem;

  /// Title of the sound effects item in settings
  ///
  /// In en, this message translates to:
  /// **'Sound Effects'**
  String get settingsSoundEffectsItem;

  /// Title of the music item in settings
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get settingsMusicItem;

  /// Title of the credits item in settings
  ///
  /// In en, this message translates to:
  /// **'Credits, Legal, Links...'**
  String get settingsCreditsItem;

  /// Label join a match
  ///
  /// In en, this message translates to:
  /// **'Join a match'**
  String get joinMatch;

  /// Title of the deck building page
  ///
  /// In en, this message translates to:
  /// **'Pick your team'**
  String get deckBuildingTitle;

  /// Subtitle of the deck building page
  ///
  /// In en, this message translates to:
  /// **'Swipe to see the rest of your pack'**
  String get deckBuildingSubtitle;

  /// Title displayed while waiting to find match
  ///
  /// In en, this message translates to:
  /// **'Finding match...'**
  String get findingMatch;

  /// Subtitle displayed while waiting to find match
  ///
  /// In en, this message translates to:
  /// **'Searching for opponents'**
  String get searchingForOpponents;

  /// Label on button to copy match invite code
  ///
  /// In en, this message translates to:
  /// **'Copy invite code'**
  String get copyInviteCode;

  /// Label of the match making page button
  ///
  /// In en, this message translates to:
  /// **'MATCHMAKING...'**
  String get matchmaking;

  /// Title displayed when match is found, before entering the game
  ///
  /// In en, this message translates to:
  /// **'Get ready to FLIP!'**
  String get getReadyToFlip;

  /// Subtitle displayed when match is found, before entering the game
  ///
  /// In en, this message translates to:
  /// **'An AI-designed card game powered by Google'**
  String get aiGameByGoogle;

  /// Title of the quit game dialog
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get quitGameDialogTitle;

  /// Description of the quit game dialog
  ///
  /// In en, this message translates to:
  /// **'You will lose your current team and end your winning streak.'**
  String get quitGameDialogDescription;

  /// Error message shown when user connects in multiple tabs
  ///
  /// In en, this message translates to:
  /// **'I/O FLIP is already open on another tab'**
  String get playerAlreadyConnectedError;

  /// Error message shown when user connects in multiple tabs
  ///
  /// In en, this message translates to:
  /// **'You can only play on one tab at a time.'**
  String get playerAlreadyConnectedErrorBody;

  /// Error message shown when an unknown error occurs while connecting
  ///
  /// In en, this message translates to:
  /// **'Unable to connect'**
  String get unknownConnectionError;

  /// Error message shown when an unknown error occurs while connecting
  ///
  /// In en, this message translates to:
  /// **'Please try again in a few moments.'**
  String get unknownConnectionErrorBody;

  /// Button shown when an unknown error occurs while connecting
  ///
  /// In en, this message translates to:
  /// **'RETRY'**
  String get unknownConnectionErrorButton;

  /// Label for the developer profile button
  ///
  /// In en, this message translates to:
  /// **'DEVELOPER PROFILE'**
  String get devButtonLabel;

  /// Label for the share to twitter button
  ///
  /// In en, this message translates to:
  /// **'TWITTER'**
  String get twitterButtonLabel;

  /// Label for the share to facebook button
  ///
  /// In en, this message translates to:
  /// **'FACEBOOK'**
  String get facebookButtonLabel;

  /// Text shown in the first page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'Grab a pack and create your team from millions of AI-designed cards.'**
  String get howToPlayIntroTitle;

  /// Text shown in the deck page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'FLIP your way to the top of the leaderboard with the longest winning streak.'**
  String get howToPlayDeckTitle;

  /// Text shown in the elements page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'FLIP your way to victory! Elemental powers apply extra damage in a match.'**
  String get howToPlayElementsTitle;

  /// Text shown in the fire element page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'<yellow>Fire</yellow> scorches <lightblue>air</lightblue> and\nmelts <green>metal</green>.'**
  String get howToPlayElementsFireTitle;

  /// Text shown in the air element page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'<lightblue>Air</lightblue> blasts <blue>water</blue> and\nblows away <red>earth</red>.'**
  String get howToPlayElementsAirTitle;

  /// Text shown in the metal element page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'<green>Metal</green> traps <lightblue>air</lightblue> and\ndiverts <blue>water</blue>.'**
  String get howToPlayElementsMetalTitle;

  /// Text shown in the earth element page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'<red>Earth</red> crushes <green>metal</green> and\nsnuffs out <yellow>fire</yellow>.'**
  String get howToPlayElementsEarthTitle;

  /// Text shown in the water element page of the how to play flow
  ///
  /// In en, this message translates to:
  /// **'<blue>Water</blue> puts out <yellow>fire</yellow> and\nerodes <red>earth</red>.'**
  String get howToPlayElementsWaterTitle;

  /// Title shown in the share hand page
  ///
  /// In en, this message translates to:
  /// **'Share your team!'**
  String get shareTeamTitle;

  /// Label for how many wins the user has
  ///
  /// In en, this message translates to:
  /// **'win streak!'**
  String get winStreakLabel;

  /// Text shown on the share button
  ///
  /// In en, this message translates to:
  /// **'SHARE'**
  String get shareButtonLabel;

  /// Text shown on the main menu button
  ///
  /// In en, this message translates to:
  /// **'MAIN MENU'**
  String get mainMenuButtonLabel;

  /// No description provided for @infoDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'About I/O FLIP'**
  String get infoDialogTitle;

  /// No description provided for @infoDialogDescriptionPrefix.
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get infoDialogDescriptionPrefix;

  /// First description infix text shown in the info dialog
  ///
  /// In en, this message translates to:
  /// **'how I/O FLIP was made'**
  String get infoDialogDescriptionInfixOne;

  /// Second description infix text shown in the info dialog
  ///
  /// In en, this message translates to:
  /// **'and\ngrab the'**
  String get infoDialogDescriptionInfixTwo;

  /// Description suffix text shown in the info dialog
  ///
  /// In en, this message translates to:
  /// **'open source code.'**
  String get infoDialogDescriptionSuffix;

  /// Other links text shown in the info dialog
  ///
  /// In en, this message translates to:
  /// **'Other Links'**
  String get infoDialogOtherLinks;

  /// Text shown on the Google I/O link
  ///
  /// In en, this message translates to:
  /// **'Google I/O'**
  String get ioLinkLabel;

  /// Text shown on the Privacy Policy link
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyLinkLabel;

  /// Text shown on the Terms of Service link
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfServiceLinkLabel;

  /// Text shown on the FAQ link
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faqLinkLabel;

  /// Text shown on the How it's made link
  ///
  /// In en, this message translates to:
  /// **'How it\'s made'**
  String get howItsMadeLinkLabel;

  /// Disclaimer shown on the share card dialog
  ///
  /// In en, this message translates to:
  /// **'If you choose to share, your card will be made available at a unique URL for 30 days and then automatically deleted.'**
  String get shareCardDisclaimer;

  /// Text shown on the share card dialog
  ///
  /// In en, this message translates to:
  /// **'Share your AI-designed creation then head into a match.'**
  String get shareCardDialogDescription;

  /// Disclaimer shown on the share team dialog
  ///
  /// In en, this message translates to:
  /// **'If you choose to share, your initials, cards and score will be made available at a unique URL for 30 days and then automatically deleted.'**
  String get shareTeamDisclaimer;

  /// Text shown on the share team dialog
  ///
  /// In en, this message translates to:
  /// **'Share your team from I/O FLIP and challenge your friends to beat your streak!'**
  String get shareTeamDialogDescription;

  /// Title shown on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'I/O FLIP Terms of Use'**
  String get termsOfUseTitle;

  /// Description prefix text shown on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'By continuing, I accept the'**
  String get termsOfUseDescriptionPrefix;

  /// First description infix text shown on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfUseDescriptionInfixOne;

  /// Second description infix text shown on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'and acknowledge that information Google collects about me in connection with I/O FLIP will be processed in accordance with the Google'**
  String get termsOfUseDescriptionInfixTwo;

  /// Description suffix text shown on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy.'**
  String get termsOfUseDescriptionSuffix;

  /// Text shown on the accept button on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'ACCEPT'**
  String get termsOfUseAcceptLabel;

  /// Text shown on the decline button on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'DECLINE'**
  String get termsOfUseDeclineLabel;

  /// Label shown on the save button on share dialog
  ///
  /// In en, this message translates to:
  /// **'SAVE'**
  String get saveButtonLabel;

  /// Label shown on the downloading button on share dialog
  ///
  /// In en, this message translates to:
  /// **'DOWNLOADING'**
  String get downloadingButtonLabel;

  /// Label shown on the download button on complete
  ///
  /// In en, this message translates to:
  /// **'DOWNLOADED'**
  String get downloadCompleteButtonLabel;

  /// Text shown on the download notification on success
  ///
  /// In en, this message translates to:
  /// **'Download complete'**
  String get downloadCompleteLabel;

  /// Text shown on the download notification on failure
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, try again'**
  String get downloadFailedLabel;

  /// Text shown on the initials form on blacklisted state
  ///
  /// In en, this message translates to:
  /// **'Let’s keep it PG, use different initials'**
  String get blacklistedErrorMessage;

  /// Text shown on the continue button on the terms of use page
  ///
  /// In en, this message translates to:
  /// **'CONTINUE'**
  String get termsOfUseContinueLabel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
