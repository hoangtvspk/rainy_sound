import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  String getLocalizedText(String key) {
    switch (key) {
      // Sound titles
      case 'soundGentleRain':
        return l10n.soundGentleRain;
      case 'soundHeavyRain':
        return l10n.soundHeavyRain;
      case 'soundThunderRain':
        return l10n.soundThunderRain;
      case 'soundWindyRain':
        return l10n.soundWindyRain;
      case 'soundThunderstorm':
        return l10n.soundThunderstorm;
      case 'soundRainOnRoof':
        return l10n.soundRainOnRoof;

      // Sound descriptions
      case 'soundGentleRainDesc':
        return l10n.soundGentleRainDesc;
      case 'soundHeavyRainDesc':
        return l10n.soundHeavyRainDesc;
      case 'soundThunderRainDesc':
        return l10n.soundThunderRainDesc;
      case 'soundWindyRainDesc':
        return l10n.soundWindyRainDesc;
      case 'soundThunderstormDesc':
        return l10n.soundThunderstormDesc;
      case 'soundRainOnRoofDesc':
        return l10n.soundRainOnRoofDesc;

      // Other strings
      case 'appTitle':
        return l10n.appTitle;
      case 'findPerfectSound':
        return l10n.findPerfectSound;
      case 'newReleases':
        return l10n.newReleases;
      case 'noSoundsAvailable':
        return l10n.noSoundsAvailable;
      case 'failedToLoadSounds':
        return l10n.failedToLoadSounds;
      case 'search':
        return l10n.search;

      default:
        return key; // Return the key itself if no match found
    }
  }
}
